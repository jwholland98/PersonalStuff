import sys

def copy(inf, outf):
    ifile = open(inf, "rb")
    ofile = open(outf, "wb")
    byte = ifile.read(1)
    while byte:
        ofile.write(byte)
        byte = ifile.read(1)

def main():
    if len(sys.argv) < 3:
        print("Please provide the name of the image to copy and what you want the copy to be named.")
        exit()
    copy(sys.argv[1], sys.argv[2])

main()