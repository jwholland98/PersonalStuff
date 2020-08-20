import random

cards = ["AH", "2H", "3H", "4H", "5H", "6H", "7H", "8H", "9H", "10H", "JH", "QH", "KH",
         "AS", "2S", "3S", "4S", "5S", "6S", "7S", "8S", "9S", "10S", "JS", "QS", "KS",
         "AC", "2C", "3C", "4C", "5C", "6C", "7C", "8C", "9C", "10C", "JC", "QC", "KC",
         "AD", "2D", "3D", "4D", "5D", "6D", "7D", "8D", "9D", "10D", "JD", "QD", "KD"]

inUse = ["2S", "5H"]

#def getInUse():

#def add():

#def del():

def getRandCard():
    index = random.randrange(0, len(inUse),1)
    return inUse[index]

def main():
    #getInUse()
    while True:
        print('What do you want to do?\n1.) Add a card\n2.) Delete a card\n3.) Get a random card\n4.) Exit')
        ans = input()
        if ans == '3':
            print('\n',getRandCard(), '\n')
        if ans == '4':
            exit()

main()