#ifndef __TOS_DRIVERS_VESA_CLI_BUFFER_H__
    #define __TOS_DRIVERS_VESA_CLI_BUFFER_H__

    #include "types.h"

void move_buffer_up(uint8_t lines);

uint8_t *get_line(uint8_t line);

void add_str_to_buffer(const char *str);

#endif