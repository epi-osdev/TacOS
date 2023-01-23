#include "drivers/vesa_cli/prompt.h"
#include "drivers/vesa_cli/datas.h"
#include "types.h"

void init_prompt()
{
    for (size_t i = 0; i < MAX_PROMPT_SIZE; i++) {
        vesa_cli.prompt[i] = (buffer_char_t) {
            .c = 0,
            .can_be_modified = 1
        };
    }
    vesa_cli.prompt[0] = (buffer_char_t) {
        .c = '>',
        .can_be_modified = 0
    };
    vesa_cli.prompt[1] = (buffer_char_t) {
        .c = ' ',
        .can_be_modified = 0
    };
    for (size_t i = 0; vesa_cli.prompt[i].c; i++) {
        vesa_cli.buffer[i] = vesa_cli.prompt[i];
        vesa_cli.x++;
    }
}

void print_prompt()
{
    for (size_t i = 0; vesa_cli.prompt[i].c; i++) {
        vesa_cli.buffer[vesa_cli.x + vesa_cli.y * vesa_cli.width] = vesa_cli.prompt[i];
        vesa_cli.x++;
        if (vesa_cli.x >= vesa_cli.width) {
            vesa_cli.x = 0;
            vesa_cli.y++;
        }
        if (vesa_cli.y >= vesa_cli.height) {
            vesa_cli.y = 0;
        }
    }
}