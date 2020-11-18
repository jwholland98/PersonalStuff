import socket
import sys

def encode(message):
    return message.encode()

def decode(message):
    return message.decode("utf-8")

def main():
    msgFromClient = "HELLO"
    bytesToSend = encode(msgFromClient)
    serverAddressPort = ("127.0.0.1", 8123)
    bufferSize = 1024
    UDPClientSocket = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)
    UDPClientSocket.sendto(bytesToSend, serverAddressPort)

    msgFromServer = UDPClientSocket.recvfrom(bufferSize)
    print(decode(msgFromServer[0]))

    cmd = ""
    while not cmd == "DONE":
        cmd = input()
        bytesToSend = encode(cmd)
        UDPClientSocket.sendto(bytesToSend, serverAddressPort)
        msgFromServer = UDPClientSocket.recvfrom(bufferSize)
        print(decode(msgFromServer[0]))

main()