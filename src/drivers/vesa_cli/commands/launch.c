#include "drivers/vesa_cli/commands/launch.h"
#include "drivers/vesa_cli/commands/command_list.h"
#include "drivers/vesa_cli/buffer.h"
#include "drivers/vesa_cli/datas.h"
#include "string.h"

static void launch_unknown_command(const char *name)
{
    add_str_to_buffer("Unknown command: ");
    add_str_to_buffer(name);
}

void run_command(const char *name, const char **args)
{
    if (strcmp(name, "echo") == 0) {
        echo(args);
        return;
    }
    if (strcmp(name, "clear") == 0) {
        clear();
        return;
    }
    launch_unknown_command(name);
}