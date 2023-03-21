#ifndef __TOS_DRIVERS_FS_ARCH_H__
    #define __TOS_DRIVERS_FS_ARCH_H__

struct file bin_folder();
struct file img_folder();
struct file null_folder();
struct file test_folder();
struct file fs_folder();
struct files *_files_builder(struct file file, ...);
struct files *_files(struct files files);
struct file *_file(struct file file);
struct folder_content *_folder_ctn(struct folder_content content);
struct file_content *_file_ctn(struct file_content content);

#endif