#include "drivers/vesa_cli/commands/echo.h"
#include "types.h"
#include "drivers/vesa_cli/buffer.h"
#include "drivers/vesa.h"

void echo(const char **args)
{
    for (size_t i = 0; args[i]; i++) {
        GUI.draw_square(0, i * 20 + 100, 10, 0x00FF00);
        add_str_to_buffer(args[i]);
        if (args[i + 1])
            add_str_to_buffer(" ");
    }
}