#include "drivers/vesa_cli/update.h"
#include "drivers/vesa_cli/datas.h"
#include "drivers/vesa_cli/draw.h"
#include "drivers/vesa_cli/clear.h"

static void delete_last_char()
{
    if (vesa_cli.x > 0) {
        vesa_cli.x--;
        vesa_cli.buffer[vesa_cli.x + vesa_cli.y * vesa_cli.width] = 0;
    }
    clear_char((pos2i_t){vesa_cli.x, vesa_cli.y});
}

static int check_special_case(uint8_t scancode)
{
    if (scancode == 0x0E) {     // 0x0E is backspace
        delete_last_char();
        return 1;
    }
    return 0;
}

void vesa_cli_update(uint8_t scancode)
{
    if (scancode == 0)
        return;
    if (check_special_case(scancode))
        goto update_end;
    vesa_cli.buffer[vesa_cli.x + vesa_cli.y * vesa_cli.width] = scancode;
    vesa_cli.x++;
    if (vesa_cli.x >= vesa_cli.width) {
        vesa_cli.x = 0;
        vesa_cli.y++;
    }
    if (vesa_cli.y >= vesa_cli.height) {
        vesa_cli.y = 0;
    }
update_end:
    draw();
}
