#ifndef __TOS_DRIVERS_FS_FOLDER_H__
    #define __TOS_DRIVERS_FS_FOLDER_H__

    #include "drivers/fs/datas.h"

struct file *create_empty_folder();
struct file *create_folder_wname(const char *name);
uint8_t default_folder_flags();
int is_folder(struct file *file);
struct file *get_file(struct files *files, const char *name);
struct file *get_file_from_path(const char *path);
struct file *get_file_from_gpath(const char *path);
struct file *get_file_from_lpath(const char *path);

#endif