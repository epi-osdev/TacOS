def main():
    lines = []
    with open('font') as f:
        lines = f.readlines()
    res = ""
    for i in range(0, len(lines), 32):
        res += "".join(lines[i:i+32]) + "\n"
    with open("res", "w") as r:
        r.write(res)

main()