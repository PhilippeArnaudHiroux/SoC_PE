#include <stdlib.h>
#include "sleep.h"
#include "xiic_l.h"
#include "xil_printf.h"

#include "vl53l5cx_platform.h"
#include "../ToF_iic.h"

uint8_t RdByte(
		VL53L5CX_Platform *p_platform,
		uint16_t RegisterAdress,
		uint8_t *p_value)
{
	uint8_t status;
	uint8_t buffer[2];

	buffer[0] = (RegisterAdress >> 8) & 0xFF;		// high byte of register address
	buffer[1] = RegisterAdress & 0xFF;				// low byte of register address

	status = XIic_Send(p_platform->p_instance, p_platform->address, buffer, 2, XIIC_REPEATED_START);
	if (status != 2)
	{
		xil_printf("Error XIic_Send in RdByte: Got %d, Expected %d\n\r", status, 2);
		return -1;
	}

	status = XIic_Recv(p_platform->p_instance, p_platform->address, buffer, 1, XIIC_STOP);
	if (status != 1)
	{
		xil_printf("Error XIic_Recv in RdByte: Got %d, Expected %d\n\r", status, 1);
		return -1;
	}

	// Copy received data to output buffer
	*p_value = buffer[0];

	return 0;
}

uint8_t WrByte(
		VL53L5CX_Platform *p_platform,
		uint16_t RegisterAdress,
		uint8_t value)
{
	uint8_t status;
	uint8_t buffer[3];

	buffer[0] = (RegisterAdress >> 8) & 0xFF;
	buffer[1] = RegisterAdress & 0xFF;
	buffer[2] = value;

	status = XIic_Send(p_platform->p_instance, p_platform->address, buffer, 3, XIIC_STOP);
	if (status != 3)
	{
		xil_printf("Error XIic_Send in WrByte: Got %d, Expected %d\n\r", status, 3);
		return -1;
	}

	return 0;
}

uint8_t WrMulti(
		VL53L5CX_Platform *p_platform,
		uint16_t RegisterAdress,
		uint8_t *p_values,
		uint32_t size)
{
	uint32_t status;
	uint8_t* buffer = (uint8_t*)malloc(size * sizeof(uint8_t));

	buffer[0] = (RegisterAdress >> 8) & 0xFF;
	buffer[1] = RegisterAdress & 0xFF;
	for (int i = 0; i < size; i++)
	{
		buffer[i+2] = p_values[i];
	}

	status = XIic_Send(p_platform->p_instance, p_platform->address, buffer, size+2, XIIC_STOP);
	if (status != size+2)
	{
		xil_printf("Error XIic_Send in WrMulti: Got %d, Expected %d\n\r", status, size+2);
		return -1;
	}

	free(buffer);
	return 0;
}

uint8_t RdMulti(
		VL53L5CX_Platform *p_platform,
		uint16_t RegisterAdress,
		uint8_t *p_values,
		uint32_t size)
{
	uint32_t status;
	uint8_t buffer[2];

	buffer[0] = (RegisterAdress >> 8) & 0xFF;
	buffer[1] = RegisterAdress & 0xFF;

	status = XIic_Send(p_platform->p_instance, p_platform->address, buffer, 2, XIIC_REPEATED_START);
	if (status != 2)
	{
		xil_printf("Error XIic_Send in RdMulti: Got %d, Expected %d\n\r", status, 2);
		return -1;
	}

	status = XIic_Recv(p_platform->p_instance, p_platform->address, p_values, size, XIIC_STOP);
	if (status != size)
	{
		xil_printf("Error XIic_Recv in RdMulti: Got %d, Expected %d\n\r", status, size);
		return -1;
	}

	return 0;
}

uint8_t Reset_Sensor(
		VL53L5CX_Platform *p_platform)
{
	uint8_t status = 0;
	
	/* (Optional) Need to be implemented by customer. This function returns 0 if OK */
	
	/* Set pin LPN to LOW */
	/* Set pin AVDD to LOW */
	/* Set pin VDDIO  to LOW */
	WaitMs(p_platform, 100);

	/* Set pin LPN of to HIGH */
	/* Set pin AVDD of to HIGH */
	/* Set pin VDDIO of  to HIGH */
	WaitMs(p_platform, 100);

	return status;
}

void SwapBuffer(uint8_t* buffer, uint16_t size)
{
    uint32_t i, tmp;

    for (i = 0; i < size; i = i + 4)
    {
        tmp = (buffer[i] << 24) | (buffer[i + 1] << 16) | (buffer[i + 2] << 8) | (buffer[i + 3]);
        memcpy(&(buffer[i]), &tmp, 4);
    }
}

uint8_t WaitMs(VL53L5CX_Platform* p_platform, uint32_t TimeMs)
{
    usleep_A9(TimeMs * 1000);

    return 0;
}
