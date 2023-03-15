#include "drivers/fs/datas.h"
#include "types.h"
#include "memory.h"
#include "files.h"
#include "file.h"

static struct files *create_default_files() {
    struct files *files = malloc(sizeof(struct files));
    struct files *tmp = files;

    memset(files, 0, sizeof(struct files));
    tmp = add_file(tmp, create_file_wname("test"));
    return files;
}

static struct file_system create_fs_data()
{
    return (struct file_system) {
        .files = create_default_files()
    };
}

int init_fs()
{
    FS = create_fs_data();
    return 1;
}