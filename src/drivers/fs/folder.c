#include "drivers/fs/datas.h"
#include "drivers/fs/file.h"
#include "memory.h"

struct file *create_empty_folder()
{
    struct file *folder = malloc(sizeof(struct file));

    memset(folder, 0, sizeof(struct file));
    return folder;
}

static uint8_t default_folder_flags()
{
    return FOLDER_FLAG;
}

static set_folder_name(struct file *folder, const char *name)
{
    memset(folder->name, 0, MAX_FILE_NAME_SIZE);
    strcat(folder->name, name);
}

static void set_folder_flag(struct file *folder, uint8_t flags)
{
    set_file_flags(folder, flags);
}

struct file *create_folder_wname(const char *name)
{
    struct file *folder = create_empty_folder();

    set_folder_name(folder, name);
    set_folder_name(folder, name);
    set_folder_flag(folder, default_folder_flags());
    return folder;
}
