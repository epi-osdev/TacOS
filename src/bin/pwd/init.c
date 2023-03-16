#include "drivers/vesa_cli.h"
#include "drivers/fs.h"
#include "string.h"

static int __launch(const char **args)
{
    add_str_to_buffer(FS.path);
    return 1;
}

static int __match(const char *name)
{
    return !strcmp(name, "pwd");
}

void init_pwd()
{
    add_command((struct command) {
        .launch = __launch,
        .match = __match
    });
}
