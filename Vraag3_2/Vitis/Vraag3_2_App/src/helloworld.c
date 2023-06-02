/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

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
#include "st7789v.h"
#include "xspi.h"


XSpi spi;
XGpio gpio;

void mtb_st7789v_init(void) {
    // Initialize SPI device
    XSpi_Config *spiConfig;
    spiConfig = XSpi_LookupConfig(TFT_SPI_DEVICE_ID);
    XSpi_CfgInitialize(&spi, spiConfig, spiConfig->BaseAddress);
    XSpi_SetOptions(&spi, XSP_MASTER_OPTION | XSP_MANUAL_SSELECT_OPTION);
    XSpi_Start(&spi);

    // Initialize GPIO for DC pin
    XGpio_Initialize(&gpio, TFT_DC_GPIO_DEVICE_ID);
    XGpio_SetDataDirection(&gpio, TFT_DC_GPIO_CHANNEL, TFT_DC_GPIO_PIN_MASK);
}

int main()
{
    // Initialize the TFT display
    mtb_st7789v_init();

    // Set the text position and color
    mtb_st7789v_set_text_position(0, 0); // Example: Set position at (0, 0)
    mtb_st7789v_set_text_color(MTB_ST7789V_COLOR_WHITE); // Example: Set text color to white

    // Print the message on the TFT display
    mtb_st7789v_print("Hello, TFT!"); // Example: Print "Hello, TFT!"

}
