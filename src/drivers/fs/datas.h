#ifndef __TOS_DRIVERS_FS_DATAS_H__
    #define __TOS_DRIVERS_FS_DATAS_H__

    #include "types.h"

    #define MAX_FILE_NODE_SIZE  2048
    #define MAX_FILE_NAME_SIZE  64

    #define FILE_FLAG           0
    #define FOLDER_FLAG         1

union content_unit {
    struct file_content {
        char *content;
        struct file_content *next;
    };
    struct folder_content {
        struct files *files;
    };
};

struct file {
    char name[MAX_FILE_NAME_SIZE];
    uint8_t flags;
    struct file_content *content;
};

struct files {
    struct file *file;
    struct files *next;
};

struct file_system {
    struct files *files;
};

struct file_system FS;

#endif