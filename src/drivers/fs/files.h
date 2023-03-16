#ifndef __TOS_DRIVERS_FS_FILES_H__
    #define __TOS_DRIVERS_FS_FILES_H__

    #include "drivers/fs/datas.h"

struct files *add_file(struct files *files, struct file *file);
struct files *get_files();
struct file *get_current_folder();

#endif