#include "drivers/fs.h"
#include "string.h"
#include "drivers/vesa_cli.h"

static int __launch(const char **args)
{
    if (!args[0]) {
        add_str_to_buffer("cd: missing argument");
        return 0;
    }
    if (!change_dir(args[0])) {
        add_str_to_buffer("cd: no such file or directory");
        return 0;
    }
    return 1;
}

static int __match(const char *name)
{
    return !strcmp(name, "cd");
}

void init_cd()
{
    add_command((struct command) {
        .launch = __launch,
        .match = __match
    });
}
