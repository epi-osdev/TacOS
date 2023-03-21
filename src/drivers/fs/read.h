#ifndef __TOS_DRIVERS_FS_READ_H__
    #define __TOS_DRIVERS_FS_READ_H__

    #include "types.h"
    #include "drivers/fs/datas.h"

uint8_t *read_file_from_lpath(const char *path);
uint8_t *read_file(struct file *file);

#endif