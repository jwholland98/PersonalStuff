import socket
import sys

msgFromClient = "Hello UDP Server"
bytesToSend = str.encode(msgFromClient)
serverAddressPort = ("127.0.0.1", 8080)
bufferSize = 1024


def main():
    outf = sys.argv[1]
    UDPClientSocket = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)
    UDPClientSocket.sendto(bytesToSend, serverAddressPort)
    ofile = open(outf, "wb").close()
    ofile = open(outf, "ab")
    msgFromServer = UDPClientSocket.recvfrom(bufferSize)
    while not msgFromServer[0] == b"DONE":
        ofile.write(msgFromServer[0])
        msgFromServer = UDPClientSocket.recvfrom(bufferSize)
        #print(msgFromServer[0])
    ofile.close()

main()