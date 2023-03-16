#include "drivers/fs/datas.h"
#include "string.h"

struct file bin_folder()
{
    return (struct file) {
        .name = strdup("bin"),
        .flags = FOLDER_FLAG,
        .content = NULL,
        .parent = NULL
    };
}

struct file img_folder()
{
    return (struct file) {
        .name = strdup("img"),
        .flags = FOLDER_FLAG,
        .content = NULL,
        .parent = NULL
    };
}

struct file null_folder()
{
    return (struct file) {
        .name = NULL,
        .flags = 0,
        .content = NULL,
        .parent = NULL
    };
}
