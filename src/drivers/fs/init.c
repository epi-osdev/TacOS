#include "drivers/fs/datas.h"
#include "lba.h"
#include "types.h"
#include "memory.h"
#include "files.h"
#include "file.h"
#include "arch.h"
#include "folder.h"
#include "string.h"
#include "VGA.h"

static struct files get_default_file_arch()
{
    return (struct files) {
        .file = _file((struct file) {
            .name = strdup("/"),
            .flags = FOLDER_FLAG,
            .content = (union content_unit *)_folder_ctn((struct folder_content) {
                .files = _files_builder(
                    bin_folder(),
                    img_folder(),
                    test_folder(),
                    fs_folder(),
                    null_folder()
                )
            }),
            .parent = NULL
        }),
        .next = NULL
    };
}

static struct file_system create_fs_data()
{
    return (struct file_system) {
        .files = _files(get_default_file_arch()),
        .path = strdup("/"),
        .current_file = NULL
    };
}

static void setup_parents(struct file *file)
{
    struct folder_content *content = (struct folder_content *)file->content;

    if (!content)
        return;
    for (struct files *files = content->files; files; files = files->next) {
        files->file->parent = file;
        setup_parents(files->file);
    }
}

int init_fs()
{
    FS = create_fs_data();
    FS.current_file = FS.files->file;
    setup_parents(FS.files->file);
    update_lba();
    return 1;
}