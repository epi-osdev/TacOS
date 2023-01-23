#include "drivers/vesa_cli/update.h"
#include "drivers/vesa_cli/datas.h"
#include "drivers/vesa_cli/draw.h"

void vesa_cli_update(uint8_t scancode)
{
    vesa_cli.buffer[vesa_cli.x + vesa_cli.y * vesa_cli.width] = scancode;
    vesa_cli.x++;
    if (vesa_cli.x >= vesa_cli.width) {
        vesa_cli.x = 0;
        vesa_cli.y++;
    }
    if (vesa_cli.y >= vesa_cli.height) {
        vesa_cli.y = 0;
    }
    draw();
}
