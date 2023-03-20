#include "drivers/vesa_cli.h"
#include "drivers/vesa.h"
#include "drivers/fs.h"
#include "string.h"
#include "memory.h"

static int __match(const char *name)
{
    return !strcmp(name, "cat");
}

static int __launch(const char **args)
{
    if (!args[0]) {
        add_str_to_buffer("cat: no file specified");
        return 0;
    }
    for (size_t i = 0; args[i]; ++i) {
        uint8_t *buf = read_file(args[i]);
        if (!buf) {
            add_str_to_buffer("cat: ");
            add_str_to_buffer(args[i]);
            add_str_to_buffer(": No such file or directory");
            return 0;
        }
        add_str_to_buffer((char *)buf);
        free(buf);
    }
    return 0;
}

void init_cat()
{
    add_command((struct command) {
        .match = __match,
        .launch = __launch
    });
}