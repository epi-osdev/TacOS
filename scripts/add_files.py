import glob
import os
import sys

def get_all_files(path: str) -> [str]:
    return glob.glob(path, recursive=True)

def get_size(path: str) -> int:
    return os.path.getsize(path)

def get_size_to_complete(size: int) -> int:
    return 512 - (size % 512)

def check_args():
    if len(sys.argv) <= 1:
        raise Exception("No arguments given")

def add_to_file(file_to: str, file_from: str, base_lba: int, completion: int):
    print(f"base lba: {base_lba}")
    octet_nb = base_lba * 512
    content_size = 0
    f_to_content = b""

    with open(file_to, "rb") as f_to:
        f_to_content = list(f_to.read(octet_nb))
    if len(f_to_content) < octet_nb:
        f_to_content += b"\0" * (octet_nb - len(f_to_content))

    with open(file_to, "wb") as f_to:
        with open(file_from, "rb") as f_from:
            content = f_from.read()
            content_size = len(content)
            f_to_content[:octet_nb]
            f_to_content += list(content)
            f_to_content += b"\0" * completion
            f_to.write(bytes(f_to_content))
    return content_size

def add_bytes(file_to: str, nb_bytes: int):
    with open(file_to, "ab") as f_to:
        f_to.write(b"\0" * nb_bytes)

def write_index(file_to: str, files_info: [dict], base_lba: int, sector_offset: int):
    with open(file_to, "w") as f:
        content = ""
        for file in files_info:
            file_name = "/".join(file["name"].split("/")[1:])
            content += f"{file_name}:{base_lba + sector_offset}:{file['nb_sectors']}\n"
            base_lba += file['nb_sectors']
        f.write(content[:-1])

def is_file(path: str) -> bool:
    return os.path.isfile(path)

def main():
    check_args()
    all_files: [str] = get_all_files("files/**/*")
    files_info = []
    file_to: str = sys.argv[1]
    base_lba = 30000
    for file in all_files:
        if file == "files/index":
            continue
        if not is_file(file):
            continue
        size = get_size(file)
        completion = get_size_to_complete(size)
        files_info.append({
            "name": file,
            "completion": completion,
            "nb_sectors": (size + completion) // 512
        })
    sector_offset = 1
    write_index("files/index", files_info, base_lba, sector_offset)
    index_size = get_size("files/index")
    completion = get_size_to_complete(index_size)
    content_size = add_to_file(file_to, "files/index", base_lba, completion)
    base_lba += sector_offset
    for file in files_info:
        content_size = add_to_file(file_to, file["name"], base_lba, file["completion"])
        base_lba += (content_size + file["completion"]) // 512

if __name__ == "__main__":
    try:
        main()
    except Exception as e:
        print(e)
