/*
** EPITECH PROJECT, 2022
** cursor
** File description:
** set and print the cursor
*/

#ifndef CURSOR
    #define CURSOR

    #include "drivers/idt.h"
    #define PS2LEFT_BUTTON 0b00000001
    #define PS2MIDDLE_BUTTON 0b00000010
    #define PS2RIGHT_BUTTON 0b00000100
    #define PS2XSIGN 0b00010000
    #define PS2YSIGN 0b00100000
    #define PS2XOVERFLOW 0b01000000
    #define PS2YOVERFLOW 0b10000000

    typedef struct cursor_data_s {
        uint8_t pos_x;
        uint8_t pos_y;
    }cursor_data_t;

    cursor_data_t get_cursor();
    void set_cursor(int new_pos_x, int new_pos_y);
    void display_cursor(uint8_t *mouse_data);


#endif