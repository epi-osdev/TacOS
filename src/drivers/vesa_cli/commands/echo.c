#include "drivers/vesa_cli/commands/echo.h"
#include "types.h"
#include "drivers/vesa_cli/buffer.h"

void echo(const char **args)
{
    for (size_t i = 0; args[i]; i++) {
        add_str_to_buffer(args[i]);
        if (args[i + 1])
            add_str_to_buffer(" ");
    }
}