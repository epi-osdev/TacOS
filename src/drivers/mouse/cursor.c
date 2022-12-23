/*
** EPITECH PROJECT, 2022
** cursor
** File description:
** set and print the cursor
*/

#include "cursor.h"
#include "VGA.h"

static cursor_data_t cursor;

void set_cursor(int new_pos_x, int new_pos_y)
{
    cursor.pos_x = new_pos_x;
    cursor.pos_y = new_pos_y;
}

cursor_data_t get_cursor()
{
    return cursor;
}

void set_cursor_position(uint8_t *mouse_data)
{
    cursor_data_t new_cursor = get_cursor();
    if ((mouse_data[0] & PS2XSIGN) == 1) {
        new_cursor.pos_x -= (mouse_data[1]);
        if (new_cursor.pos_x <= 0)
            new_cursor.pos_x = 0;
    } else {
        new_cursor.pos_x += (mouse_data[1]);
        if (new_cursor.pos_x > 79)
            new_cursor.pos_x = VGA_WIDTH;
    }
    if ((mouse_data[0] & PS2YSIGN) == 1) {
        new_cursor.pos_y += (mouse_data[2]);
        if (new_cursor.pos_y <= 0)
            new_cursor.pos_y = 0;
    } else {
        new_cursor.pos_y -= (mouse_data[2]);
        if (new_cursor.pos_y > 24)
            new_cursor.pos_y = VGA_HEIGHT;
    }
    set_cursor(new_cursor.pos_x, new_cursor.pos_y);
}

void display_cursor(uint8_t *mouse_data)
{
    cursor_data_t cursor_display = get_cursor();
    vga_printf_at("I", VGA_MAKE_COLOR(VGA_BLACK, VGA_BLACK), cursor_display
    .pos_x, cursor_display.pos_y);
    set_cursor_position(mouse_data);
    cursor_display = get_cursor();
    vga_printf_at("I", VGA_MAKE_COLOR(VGA_BLACK, VGA_CYAN),
                      cursor_display.pos_x, cursor_display.pos_y);
}