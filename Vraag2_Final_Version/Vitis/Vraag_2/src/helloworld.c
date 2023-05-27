
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xbram.h"
#include "xgpiops.h"
#include "xparameters.h"

#include "driver/ToF_iic.h"
#include "driver/vl53l5cx/vl53l5cx_api.h"

#define BRAM_BASE_ADDR XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR
//#define GPIO_DEVICE_ID XPAR_PS7_GPIO_0_DEVICE_ID
//#define GPIO_BASEADDR XPAR_PS7_GPIO_0_BASEADDR
//i*4
//32 bit = 4* byte
//pin 54

// Probleem:	clk tussen AXI verschillend
//				index + 4 en

int scaleValue(int value)
{
    // Perform scaling calculation
    double scaledValue = ((double)value / 2000) * 100;

    // Round the scaled value to the nearest integer
    int roundedValue = (int)(scaledValue + 0.5);

    return roundedValue;
}

int reverseScaleValue(int value) {
    // Perform reverse scaling calculation
    double scaledValue = ((2800 - value) / 2800.0) * 100;

    // Round the scaled value to the nearest integer
    int roundedValue = (int)(scaledValue + 0.5);

    return roundedValue;
}

const char* check_range(int value) {
    if (value >= 0 && value <= 20)
        return 0x00000900;
    else if (value > 21 && value <= 50)
        return 0x00000009;
    else if (value > 51 && value <= 70)
    	 return 0x00090000;
    else if (value > 71 && value <= 99)
    	 return 0x00000909;
    else
        return "Out of range";
}

int main()
{
	unsigned int originalValue = 0x00000000;
    unsigned int newValue;


    init_platform();

    /*********************************/
    /*   VL53L5CX ranging variables  */
    /*********************************/

    uint8_t 				status, loop, isAlive, isReady, i;
    VL53L5CX_Configuration 	Dev;			/* Sensor configuration */
    VL53L5CX_ResultsData 	Results;		/* Results data from VL53L5CX */


    /*********************************/
    /*      Customer platform        */
    /*********************************/

    Dev.platform.address = IIC_SLAVE_ADDR;
    Dev.platform.p_instance = IIC_BASE_ADDRESS;


    /*********************************/
	/*   Power on sensor and init    */
	/*********************************/

	/* (Optional) Check if there is a VL53L5CX sensor connected */
	status = vl53l5cx_is_alive(&Dev, &isAlive);
	if(!isAlive || status)
	{
		xil_printf("VL53L5CX not detected at requested address\n");
		return status;
	}

	/* (Mandatory) Init VL53L5CX sensor */
	status = vl53l5cx_init(&Dev);
	if(status)
	{
		xil_printf("VL53L5CX ULD Loading failed\n");
		return status;
	}

	status = vl53l5cx_set_resolution(&Dev, VL53L5CX_RESOLUTION_8X8);
	if(status)
	{
		printf("vl53l5cx_set_resolution failed, status %u\n", status);
		return status;
	}

	xil_printf("VL53L5CX ULD ready ! (Version : %s)\n",
			VL53L5CX_API_REVISION);


	/*********************************/
	/*         Ranging loop          */
	/*********************************/

	status = vl53l5cx_start_ranging(&Dev);

	loop = 0;
	while(1)
	{
		/* Use polling function to know when a new measurement is ready.
		 * Another way can be to wait for HW interrupt raised on PIN A3
		 * (GPIO 1) when a new measurement is ready */

		status = vl53l5cx_check_data_ready(&Dev, &isReady);

		if(isReady)
		{
			vl53l5cx_get_ranging_data(&Dev, &Results);

			/* As the sensor is set in 8x8 mode, we have a total
			 * of 64 zones to print. For this example, only the data of first zone are
			 * print */
			xil_printf("Print data no : %3u\n", Dev.streamcount);
			for(i = 0; i < 64; i++)
			{
				xil_printf("Zone : %3d, Status : %3u, Distance : %4d mm\n",
					i,
					Results.target_status[VL53L5CX_NB_TARGET_PER_ZONE*i],
					Results.distance_mm[VL53L5CX_NB_TARGET_PER_ZONE*i]);
				xil_printf("\n");
				xil_printf("Zone : %3d,",scaleValue(Results.distance_mm[VL53L5CX_NB_TARGET_PER_ZONE*i]));
				xil_printf("\n");


				XBram_WriteReg (BRAM_BASE_ADDR, i*4, check_range(scaleValue(Results.distance_mm[VL53L5CX_NB_TARGET_PER_ZONE*i])));
				xil_printf("hex  value : 0x%08X\n,",check_range(scaleValue(Results.distance_mm[VL53L5CX_NB_TARGET_PER_ZONE*i])));
			}
			xil_printf("\n");
			loop++;
		}

		/* Wait a few ms to avoid too high polling (function in platform
		 * file, not in API) */
		WaitMs(&(Dev.platform), 5);

	}
	status = vl53l5cx_stop_ranging(&Dev);
	xil_printf("End of ULD demo\n");

    cleanup_platform();
    return 0;
}
