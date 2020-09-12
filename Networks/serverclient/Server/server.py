import socket
import sys

localIP = "127.0.0.1"
localPort = 8080
bufferSize = 1024

def main():
    inf = sys.argv[1]
    UDPServerSocket = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)

    UDPServerSocket.bind((localIP, localPort))

    print("UDP server up and listening")
    while(True):
        bytesAddressPair = UDPServerSocket.recvfrom(bufferSize)
        message = bytesAddressPair[0]
        address = bytesAddressPair[1]
        clientMsg = "Message from Client:{}".format(message)
        clientIP = "Client IP Address:{}".format(address)
        print(clientMsg)
        print(clientIP)
        ifile = open(inf, "rb")
        byte = ifile.read(1024)
        while byte:
            UDPServerSocket.sendto(byte, address)
            byte = ifile.read(1024)
        ifile.close()
        UDPServerSocket.sendto(b"DONE", address)


main()

