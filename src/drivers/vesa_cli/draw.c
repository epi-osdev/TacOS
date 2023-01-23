#include "drivers/vesa_cli/draw.h"
#include "drivers/vesa_cli/datas.h"
#include "drivers/vesa.h"

void draw()
{
    for (uint32_t x = 0; x < vesa_cli.width; x++) {
        for (uint32_t y = 0; y < vesa_cli.height; y++) {
            pos2i_t pos = {x, y};
            pos = GUI.convert_pos2i(pos);
            if (vesa_cli.buffer[x + y * vesa_cli.width] != 0)
                GUI.print_c(vesa_cli.buffer[x + y * vesa_cli.width], pos.x, pos.y, vesa_cli.color);
        }
    }
}
