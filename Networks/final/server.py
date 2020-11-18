import socket
import sys
import subprocess

localIP = "127.0.0.1"
localPort = 8123
bufferSize = 1024

def encode(message):
    return message.encode()

def decode(message):
    return message.decode("utf-8")

def main():
    UDPServerSocket = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)

    UDPServerSocket.bind((localIP, localPort))
    message = ""

    print("UDP server up and listening")
    while(True):
        bytesAddressPair = UDPServerSocket.recvfrom(bufferSize)
        message = bytesAddressPair[0]
        address = bytesAddressPair[1]
        if message == b"HELLO":
            bytesToSend = encode("Thank you for connecting!")
            UDPServerSocket.sendto(bytesToSend, address)
        while not message == "DONE":
            bytesAddressPair = UDPServerSocket.recvfrom(bufferSize)
            message = decode(bytesAddressPair[0])
            address = bytesAddressPair[1]
            print("Message from Client:{}".format(message))
            print("Client IP Address:{}".format(address))
            if message !="DONE":
                output = subprocess.getoutput(message)
                bytesToSend = encode(output)
                UDPServerSocket.sendto(bytesToSend, address)
        bytesToSend = encode("Goodbye!")
        UDPServerSocket.sendto(bytesToSend, address)


main()

