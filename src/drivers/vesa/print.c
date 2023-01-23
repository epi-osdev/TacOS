#include "drivers/vesa/print.h"
#include "drivers/vesa/datas.h"
#include "drivers/vesa/put_pixel.h"
#include "drivers/vesa/draw_square.h"

static font_info_t *current_font_info = NULL;

pos2i_t _gui_convert_pos2i(pos2i_t pos)
{
    return ((pos2i_t){pos.x * current_font_info->width, pos.y * current_font_info->height});
}

void _gui_change_font_info(font_info_t *font_info)
{
    font_info->bytes_per_char = font_info->width * font_info->height / 8;
    current_font_info = font_info;
}

void _gui_print_char(char c, uint32_t x, uint32_t y, uint32_t color)
{
    size_t width_bytes = current_font_info->width / 8;
    uint8_t *font = current_font_info->pointer;
    uint8_t *char_ptr = font + (uint8_t)(c) * current_font_info->bytes_per_char;

    for (size_t i = 0; i < current_font_info->height; ++i) {
        for (size_t k = 0; k < width_bytes; ++k) {
            for (size_t j = 0; j < 8; ++j) {
                if (char_ptr[i * width_bytes + k] & (128 >> j)) {
                    _gui_putpixel(x + k * 8 + j, y + i, color);
                }
            }
        }
    }
}

void _gui_print_str(char *str, uint32_t x, uint32_t y, uint32_t color)
{
    for (size_t i = 0; str[i] != '\0'; ++i) {
        _gui_print_char(str[i], x + i * current_font_info->width, y, color);
    }
}