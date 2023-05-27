#ifndef TOF__IIC_H
#define TOF__IIC_H

#include "xparameters.h"


/*
 * IIC device parameters
 */
#define IIC_DEVICE_ID		XPAR_AXI_IIC_0_DEVICE_ID
#define IIC_BASE_ADDRESS	XPAR_IIC_0_BASEADDR

/*
 * Slave address (sensor)
 * Note that since the address is only 7 bits,
 * this constant is the address divided by 2.
 */
#define IIC_SLAVE_ADDR		0x29	//Actual address: 0x52

#endif
