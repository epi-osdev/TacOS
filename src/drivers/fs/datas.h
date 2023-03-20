#ifndef __TOS_DRIVERS_FS_DATAS_H__
    #define __TOS_DRIVERS_FS_DATAS_H__

    #include "types.h"

    #define MAX_FILE_NODE_SIZE  2048
    #define MAX_FILE_NAME_SIZE  64
    #define SECTOR_SIZE         512

    #define FILE_FLAG           0
    #define FOLDER_FLAG         1

struct file_content {
    uint32_t lba;
    uint32_t size;
    struct file_content *next;
};

struct folder_content {
    struct files *files;
};

union content_unit {
    struct file_content *file;
    struct folder_content *folder;
};

struct file {
    char *name;
    uint8_t flags;
    union content_unit *content;
    struct file *parent;
};

struct files {
    struct file *file;
    struct files *next;
};

struct file_system {
    struct files *files;
    char *path;
    struct file *current_file;
};

struct file_system FS;

#endif