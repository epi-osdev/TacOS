#ifndef __TOS_DRIVERS_VESA_CLI_DATAS_H__
    #define __TOS_DRIVERS_VESA_CLI_DATAS_H__

    #include "types.h"

    #define MAX_WIDTH_CHARS 80
    #define MAX_HEIGHT_CHARS 25
    #define MAX_PROMPT_SIZE 8

typedef struct buffer_char_s {
    uint8_t c;
    uint8_t can_be_modified: 1;
} buffer_char_t;

typedef struct VESA_CLI_s {
    uint32_t color;
    uint32_t x;
    uint32_t y;
    uint32_t width;
    uint32_t height;
    buffer_char_t buffer[MAX_WIDTH_CHARS * MAX_HEIGHT_CHARS];
    buffer_char_t prompt[MAX_PROMPT_SIZE];
} VESA_CLI_t;

struct command {
    int (*match)(const char *command);
    int (*launch)(const char **args);
};

struct command_list {
    struct command *command;
    struct command_list *next;
};

VESA_CLI_t vesa_cli;

struct command_list *command_list;

#endif