import socket
import sys
import subprocess
from tinyec import registry
import tinyec.ec as ec
from Crypto.Cipher import AES
import hashlib, secrets, binascii
import pickle

localIP = "127.0.0.1"
localPort = 8123
bufferSize = 1024
curve = registry.get_curve('brainpoolP256r1')


#credit to https://cryptobook.nakov.com/asymmetric-key-ciphers/ecc-encryption-decryption for encryption and decryption implementation
def encode(message):
    return message.encode()

def decode(message):
    return message.decode("utf-8")

def encryptAES(msg, secretkey):
    aesCipher = AES.new(secretkey, AES.MODE_GCM)
    ciphertext, authTag = aesCipher.encrypt_and_digest(msg)
    return (ciphertext, aesCipher.nonce, authTag)

def decrypt_AES_GCM(ciphertext, nonce, authTag, secretKey):
    aesCipher = AES.new(secretKey, AES.MODE_GCM, nonce)
    plaintext = aesCipher.decrypt_and_verify(ciphertext, authTag)
    return plaintext

def eccTo256BitKey(point):
    sha = hashlib.sha256(int.to_bytes(point.x, 32, 'big'))
    sha.update(int.to_bytes(point.y, 32, 'big'))
    return sha.digest()

def encryptECC(message, pubkey):
    ciphertextPrivKey = secrets.randbelow(curve.field.n)
    sharedECCKey = ciphertextPrivKey * pubkey
    secretKey = eccTo256BitKey(sharedECCKey)
    ciphertext, nonce, authTag = encryptAES(message, secretKey)
    ciphertextPubKey = ciphertextPrivKey * curve.g
    return (ciphertext, nonce, authTag, ciphertextPubKey)

def decryptECC(encryptedMsg, privkey):
    (ciphertext, nonce, authTag, ciphertextPubKey) = encryptedMsg
    sharedECCKey = privkey * ciphertextPubKey
    secretKey = eccTo256BitKey(sharedECCKey)
    plaintext = decrypt_AES_GCM(ciphertext, nonce, authTag, secretKey)
    return plaintext

def main():
    UDPServerSocket = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)
    UDPServerSocket.bind((localIP, localPort))
    #privkey = secrets.randbelow(curve.field.n)
    privkey = 55523049895079075860098996757830212235119640612963685438975685046735125749529
    pubkey = privkey * curve.g

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
            encryptedMsgObj = bytesAddressPair[0]
            address = bytesAddressPair[1]
            encryptedMsgObj = pickle.loads(encryptedMsgObj)
            encryptedMsg = (encryptedMsgObj['ciphertext'], encryptedMsgObj['nonce'], 
                encryptedMsgObj['authTag'], ec.Point(curve, encryptedMsgObj['ciphertextPubKeyX'], encryptedMsgObj['ciphertextPubKeyY']))
            try:
                message = decode(decryptECC(encryptedMsg, privkey))
            except:
                message = "err"
            print("Message from Client: {}".format(message))
            print("Client IP Address: {}".format(address))
            output = ""
            if message[0] != 'J' or message[1] != 'H':
                output = "Invalid use of protocol"
            if message == "err":
                output = "Error decoding command :: invalid key or invalid use of protocol"
            message = message[2:]
            if message == "DONE":
                output = "Goodbye!"
            elif encryptedMsgObj['type'] == "001" and output == "":
                output = subprocess.getoutput(message)
            output = output.encode()
            responseMsg = encryptECC(output, pubkey)
            responseMsgObj = {
                'ciphertext': responseMsg[0],
                'nonce': responseMsg[1],
                'authTag': responseMsg[2],
                'ciphertextPubKeyX': responseMsg[3].x, 
                'ciphertextPubKeyY': responseMsg[3].y
            }
            bytesToSend = pickle.dumps(responseMsgObj)
            UDPServerSocket.sendto(bytesToSend, address)


main()

