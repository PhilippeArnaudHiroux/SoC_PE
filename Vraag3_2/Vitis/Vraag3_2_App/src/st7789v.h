#ifndef MTB_ST7789V_H_
#define MTB_ST7789V_H_

#include "xspi.h"
#include "xgpio.h"

#define TFT_SPI_DEVICE_ID XPAR_GPIO_1_DEVICE_ID
#define TFT_DC_GPIO_DEVICE_ID XPAR_GPIO_1_DEVICE_ID
#define TFT_DC_GPIO_CHANNEL 1
#define TFT_DC_GPIO_PIN_MASK 0x1

#define TFT_COMMAND_MODE 0
#define TFT_DATA_MODE 1

#define TFT_WIDTH 240
#define TFT_HEIGHT 240

// Function prototypes
void mtb_st7789v_init(void);
void mtb_st7789v_set_mode(u8 mode);
void mtb_st7789v_send_command(u8 command);
void mtb_st7789v_send_data(u8 data);
void mtb_st7789v_set_address(u16 x0, u16 y0, u16 x1, u16 y1);
void mtb_st7789v_write_pixel(u16 x, u16 y, u16 color);
void mtb_st7789v_fill_screen(u16 color);
void mtb_st7789v_print(const char* str);
void mtb_st7789v_set_text_position(u16 x, u16 y);
void mtb_st7789v_set_text_color(u16 color);

#endif /* MTB_ST7789V_H_ */
