#include "drivers/vesa_cli/prompt.h"
#include "drivers/vesa_cli/datas.h"
#include "drivers/vesa_cli/clear.h"
#include "memory.h"
#include "string.h"

static void clear_last_lines(uint8_t lines)
{
    for (size_t y = vesa_cli.height - lines; y < vesa_cli.height; y++) {
        for (size_t x = 0; x < vesa_cli.width; x++) {
            clear_char((pos2i_t) {x, y});
            vesa_cli.buffer[x + y * vesa_cli.width] = (buffer_char_t) {
                .c = 0,
                .can_be_modified = 1
            };
        }
    }
}

static void move_buffer(uint8_t lines)
{
    for (size_t y = lines; y < vesa_cli.height; y++) {
        for (size_t x = 0; x < vesa_cli.width; x++) {
            vesa_cli.buffer[x + (y - lines) * vesa_cli.width] = vesa_cli.buffer[x + y * vesa_cli.width];
            clear_char((pos2i_t) {x, y - lines});
            vesa_cli.buffer[x + y * vesa_cli.width] = (buffer_char_t) {
                .c = 0,
                .can_be_modified = 1
            };
        }
    }
}

void move_buffer_up(uint8_t lines)
{
    move_buffer(lines);
    clear_last_lines(1);
}

uint8_t *get_line(uint8_t line)
{
    uint8_t *buffer = malloc(vesa_cli.width);
    for (size_t x = 0; x < vesa_cli.width; x++) {
        buffer[x] = vesa_cli.buffer[x + line * vesa_cli.width].c;
    }
    return buffer;
}

void add_str_to_buffer(const char *str)
{
    for (size_t i = 0; str[i]; i++) {
        vesa_cli.buffer[vesa_cli.x + vesa_cli.y * vesa_cli.width] = (buffer_char_t) {
            .c = str[i],
            .can_be_modified = 1
        };
        check_new_line();
    }
}

void buffer_newline()
{
    vesa_cli.x = 0;
    vesa_cli.y++;
    if (vesa_cli.y >= vesa_cli.height) {
        vesa_cli.y--;
        move_buffer_up(1);
    }
}
