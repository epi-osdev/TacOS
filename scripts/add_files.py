import glob
import os
import sys

def get_all_files(path: str) -> [str]:
    return glob.glob(path)

def get_size(path: str) -> int:
    return os.path.getsize(path)

def get_size_to_complete(size: int) -> int:
    return 512 - (size % 512)

def check_args():
    if len(sys.argv) <= 1:
        raise Exception("No arguments given")

def add_to_file(file_to: str, file_from: str):
    with open(file_to, "ab") as f_to:
        with open(file_from, "rb") as f_from:
            f_to.write(f_from.read())

def add_bytes(file_to: str, nb_bytes: int):
    with open(file_to, "ab") as f_to:
        f_to.write(b"\0" * nb_bytes)

def main():
    check_args()
    all_files: [str] = get_all_files("files/*")
    file_to: str = sys.argv[1]
    for file in all_files:
        size = get_size(file)
        completion = get_size_to_complete(size)
        add_to_file(file_to, file)
        add_bytes(file_to, completion)

if __name__ == "__main__":
    try:
        main()
    except Exception as e:
        print(e)
