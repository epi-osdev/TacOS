#include "drivers/vesa_cli/update.h"
#include "drivers/vesa_cli/datas.h"
#include "drivers/vesa_cli/draw.h"
#include "drivers/vesa_cli/clear.h"
#include "drivers/vesa_cli/prompt.h"
#include "drivers/vesa_cli/buffer.h"
#include "drivers/vesa_cli/commands.h"
#include "string.h"

static void delete_last_char()
{
    if (vesa_cli.x > 0) {
        vesa_cli.x--;
        if (vesa_cli.buffer[vesa_cli.x + vesa_cli.y * vesa_cli.width].can_be_modified) {
            vesa_cli.buffer[vesa_cli.x + vesa_cli.y * vesa_cli.width].c = 0;
        } else {
            vesa_cli.x++;
        }
    }
    clear_char((pos2i_t){vesa_cli.x, vesa_cli.y});
}

static void new_line()
{
    int has_command = 1;
    if (vesa_cli.x == strlen((char *)vesa_cli.prompt) + 1)
        has_command = 0;
    vesa_cli.x = 0;
    vesa_cli.y++;
    if (vesa_cli.y >= vesa_cli.height) {
        vesa_cli.y--;
        move_buffer_up(1);
    }
    if (has_command)
        launch_command();
    print_prompt();
}

static int check_special_case(uint8_t scancode)
{
    switch (scancode) {
        case '\b':
            delete_last_char();
            return 1;
        case '\n':
            new_line();
            return 1;
        default:
            return 0;
    }
}

void vesa_cli_update(uint8_t scancode)
{
    if (scancode == 0)
        return;
    if (check_special_case(scancode))
        goto update_end;
    vesa_cli.buffer[vesa_cli.x + vesa_cli.y * vesa_cli.width].c = scancode;
    check_new_line();
update_end:
    draw();
}
