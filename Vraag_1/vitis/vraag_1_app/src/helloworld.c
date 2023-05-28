 #include <stdio.h>
 #include <string.h>
 #include "platform.h"
 #include "sleep.h"
 #include "xuartps.h"
 #include "xparameters.h"
 #include "xil_printf.h"
 #include "xgpio.h"
#include "xbram.h"
#include "xgpiops.h"

u8 recvCmd;
u8 sendMsg[4];

XUartPs Uart;
XGpio Gpio;

#define BRAM_BASE_ADDR XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR

int main()
{
    init_platform();

	XUartPs_Config *uartConfig = XUartPs_LookupConfig(XPAR_PS7_UART_0_DEVICE_ID);
	XUartPs_CfgInitialize(&Uart, uartConfig, uartConfig->BaseAddress);

	XGpio_Config *GpioConfig = XGpio_LookupConfig(XPAR_AXI_GPIO_0_DEVICE_ID);
	XGpio_CfgInitialize(&Gpio, GpioConfig, GpioConfig->BaseAddress);
	XGpio_Initialize(&Gpio, XPAR_AXI_GPIO_0_DEVICE_ID);
	XGpio_SetDataDirection(&Gpio, 1, 0);
	XGpio_DiscreteWrite(&Gpio, 1, 0x1);


	sendMsg[0] = '0';
	sendMsg[1] = 'x';
	sendMsg[2] = '0';
	sendMsg[3] = '2';

	XUartPs_Send(&Uart, sendMsg, sizeof(sendMsg));
	usleep(5000);
	XUartPs_Recv(&Uart, &recvCmd, sizeof(u8));


	printf("%u", recvCmd);

	for(int i=0; i<64; i++)
	{
		XBram_WriteReg (BRAM_BASE_ADDR, i*4, 0x00000003);
	}


    cleanup_platform();
    return 0;
}
