/*******************************************************************************
* Copyright (C) 2018 Maxim Integrated Products, Inc., All Rights Reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a
* copy of this software and associated documentation files (the "Software"),
* to deal in the Software without restriction, including without limitation
* the rights to use, copy, modify, merge, publish, distribute, sublicense,
* and/or sell copies of the Software, and to permit persons to whom the
* Software is furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included
* in all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
* OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
* MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
* IN NO EVENT SHALL MAXIM INTEGRATED BE LIABLE FOR ANY CLAIM, DAMAGES
* OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
* ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
* OTHER DEALINGS IN THE SOFTWARE.
*
* Except as contained in this notice, the name of Maxim Integrated
* Products, Inc. shall not be used except as stated in the Maxim Integrated
* Products, Inc. Branding Policy.
*
* The mere transfer of this software does not imply any licenses
* of trade secrets, proprietary technology, copyrights, patents,
* trademarks, maskwork rights, or any other form of intellectual
* property whatsoever. Maxim Integrated Products, Inc. retains all
* ownership rights.
*******************************************************************************
* @file MAX31723.h
*******************************************************************************
*/
#ifndef MAX31723_H
#define MAX31723_H

#include "mbed.h"

#define MAX31723_NO_ERROR   0
#define MAX31723_ERROR      -1

#define MAX31723_WRITE_MASK             0x80

#define MAX31723_REG_CFG                0x00
#define MAX31723_REG_TEMP_LSB           0x01
#define MAX31723_REG_TEMP_MSB           0x02
#define MAX31723_REG_TRIP_HI_LSB        0x03
#define MAX31723_REG_TRIP_HI_MSB        0x04
#define MAX31723_REG_TRIP_LO_LSB        0x05
#define MAX31723_REG_TRIP_LO_MSB        0x06
#define MAX31723_REG_MAX                MAX31723_REG_TRIP_LO_MSB

/* Configuration, Status masks */
#define MAX31723_CFG_CONTINUOUS         0x00
#define MAX31723_CFG_STANDBY            0x01

#define MAX31723_CFG_RESOLUTION_9BIT    0x00
#define MAX31723_CFG_RESOLUTION_10BIT   0x02
#define MAX31723_CFG_RESOLUTION_11BIT   0x04
#define MAX31723_CFG_RESOLUTION_12BIT   0x06
#define MAX31723_CFG_RESOLUTION_MASK    0x06

#define MAX31723_CFG_TM_MODE_INTERRUPT  0x08
#define MAX31723_CFG_1SHOT              0x10
#define MAX31723_CFG_NVB_NVRAM_BUSY     0x20
#define MAX31723_CFG_MEMW_CFG_WR_EEPROM 0x40

#define MAX31723_CONV_TIME_MSEC_9BIT    0.025
#define MAX31723_CONV_TIME_MSEC_10BIT   0.050
#define MAX31723_CONV_TIME_MSEC_11BIT   0.100
#define MAX31723_CONV_TIME_MSEC_12BIT   0.200

#define MAX31723_NVRAM_WRITE_TIME_MSEC  0.015

#define MAX31723_CF_LSB                 (0.00390625f)

/**
 * @brief 9-bit to 12bit device temperature sensor with digital-to-analog converters (DACs)
 *        for the MAX31723.
 * @version 1.0000.0003
 *
 * @details The MAX31722/MAX31723 provides device temperature readings
 * for thermostats and thermometers. Communications may be either SPI or
 * 3-wire. There are two operating modes available: comparator or interrupt.
 * Temperature limits may be stored in NVRAM so that the TOUT_N pin can be 
 * triggered when the limits are exceeded while in the comparator mode.
 * Typically applications are for temperature sensitive systems.
 *
 * @code 
 * #include "mbed.h"
 * #include "max32630fthr.h"
 * #include "max31723.h"
 * #include "USBSerial.h"
 * 
 * MAX32630FTHR pegasus(MAX32630FTHR::VIO_1V8); 
 * 
 * DigitalOut gLED(LED2);
 * 
 * DigitalOut selectPin(P3_0);
 * SPI spi(P5_1, P5_2, P5_0);
 * 
 * int main()
 * {
 *     int i, ret;
 *     float temperature;
 *     DigitalOut gLED(LED2, LED_OFF);
 *     printf("MAX31723 Temperature Sensor example code.\r\n");
 *     printf("\r\n");
 *     
 *     gLED = LED_ON;
 * 
 *     MAX31723 temp_sensor(spi, selectPin);
 *     spi.format(8,3);
 *     spi.frequency(5000000);
 *     ret = temp_sensor.perform_one_shot_int(MAX31723_CFG_RESOLUTION_12BIT);
 *     
 *     for (i = 0; i < 5; i++) {
 *         ret = temp_sensor.perform_one_shot_int(MAX31723_CFG_RESOLUTION_12BIT);
 *         wait(MAX31723_CONV_TIME_MSEC_12BIT);
 *         temperature = temp_sensor.read_temperature();
 *         printf("Temperature = %4.4f Celsius, %4.4f Fahrenheit\r\n", 
 *             temperature, temp_sensor.celsius_to_fahrenheit(temperature));
 *         wait(2);
 *     } 
 *     printf("Configuration Register = 0x%02Xh \r\n", temp_sensor.read_cfg());
 * }
 * 
 */

class MAX31723{
    public:
    
    /**************************************************************
    * @brief Constructor for MAX31723 Class.  
    * 
    * @details Requires an existing SPI object as well as a DigitalOut object. 
    * The DigitalOut object is used for a chip enable signal
    *
    * On Entry:
    *     @param[in] spi - pointer to existing SPI object
    *     @param[in] ce_pin - pointer to a DigitalOut pin object
    *
    * On Exit:
    *
    * @return None
    ***************************************************************
    */
    MAX31723(SPI &spi, DigitalOut &ce_pin); 

    /** 
     * @brief Reads the register
     * @param &val - register value
     * @param reg  - address of the register
     * @return 0 on success, negative number on failure
     */
    int read_reg(uint8_t &val, uint8_t reg);

    /** 
     * @brief Reads the configuration register
     * @return value of the configuration register
     */
    uint8_t read_cfg();

    /** 
     * @brief Reads the temperature register
     * @return temperature in degrees Celsius
     */
    float read_temperature(void);

    /** 
     * @brief Reads the trip low temperature register
     * @return trip low temperature in degrees Celsius
     */
    float read_trip_low(void);

    /** 
     * @brief Reads the trip high temperature register
     * @return trip high temperature in degrees Celsius
     */
    float read_trip_high(void);
    
    /** 
     * @brief Writes to the configuration register
     * @param val - the configuration value
     * @return 0 on success, negative number on failure
     */
    int write_cfg(uint8_t val);

    /** 
     * @brief Writes to the Tlow register (the write takes 30 msec)
     * @param temperature - the temperature in Celsius degrees
     * @return 0 on success, negative number on failure
     */
     int write_trip_low(float temperature);

    /** 
     * @brief Writes to the Thigh register (the write takes 30 msec)
     * @param temperature - the temperature in Celsius degrees
     * @return 0 on success, negative number on failure
     */
     int write_trip_high(float temperature);

    /** 
     * @brief Reads the temperature registers
     * @param reg - the address of the temperature register
     * @return temprature in degrees Celsius
     */
    float read_reg_as_temperature(uint8_t reg);

    /** 
     * @brief Configures the device to perform a one-shot temperature reading
     *        and places the device in standby mode, interrupt mode.
     * @param resolution - the resolution of the calculation is set to this
     * @return 0 on success, negative number on failure
     */
    int perform_one_shot_int(uint8_t resolution);

    /** 
     * @brief Configures the device to perform a one-shot temperature reading
     *        and places the device in standby mode, comparator mode.
     * @param resolution - the resolution of the calculation is set to this
     * @return 0 on success, negative number on failure
     */
    int perform_one_shot_comparator(uint8_t resolution);

    /** 
     * @brief Converts Celcius degrees to Fahrenheit
     * @param temp_c - the temperature in Celsius degrees
     * @return 0 on success, negative number on failure
     */
    float celsius_to_fahrenheit(float temp_c);

    /************************************************************
     * @brief Default destructor for MAX31723 Class.  
     *
     * @details Destroys SPI object if owner 
     *
     * On Entry:
     *
     * On Exit:
     *
     * @return None
     *************************************************************
     */
    ~MAX31723();

    protected:
    /** 
     * @brief Configures the device to perform a one-shot temperature reading
     *        and places the device in standby mode, interrupt mode.
     * @param resolution - the resolution of the calculation is set to this
     * @return 0 on success, negative number on failure
     */
    int perform_one_shot(uint8_t resolution, uint8_t interrupt_mode);

    private:
    /** 
     * @brief Write a value to a register
     * @param val - 8-bit value to write to the register
     * @param reg - register address
     * @return 0 on success, negative number on failure
     */
    int write_reg(uint8_t val, uint8_t reg);

    /** @var m_spi
     *  @brief SPI object
     */
    SPI &m_spi;

    /** @var m_chip_enable
     *  @brief Chip Enable pin
     */
    /* chip enable pin */

    DigitalOut &m_chip_enable;
};

#endif