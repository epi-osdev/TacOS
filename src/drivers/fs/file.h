#ifndef __TOS_DRIVERS_FS_FILE_H__
    #define __TOS_DRIVERS_FS_FILE_H__

    #include "drivers/fs/datas.h"

struct file *create_empty_file();
struct file *create_file_wname(const char *name);
void set_file_name(struct file *f, const char *name);
void set_file_flags(struct file *file, uint8_t flags);

#endif
