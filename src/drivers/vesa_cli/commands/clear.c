#include "drivers/vesa_cli/commands/clear.h"
#include "drivers/vesa_cli/datas.h"
#include "drivers/vesa_cli/clear.h"

void clear()
{
    for (size_t i = 0; i < vesa_cli.width * vesa_cli.height; i++) {
        vesa_cli.buffer[i] = (buffer_char_t) {
            .c = 0,
            .can_be_modified = 1
        };
        clear_char((pos2i_t){i % vesa_cli.width, i / vesa_cli.width});
    }
    vesa_cli.x = 0;
    vesa_cli.y = -1;
}
