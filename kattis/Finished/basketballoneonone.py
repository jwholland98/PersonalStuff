scores = input()

alice = 0
barb = 0
for i in range(len(scores)-1):
    if scores[i] == 'A':
        i+=1
        if scores[i]=='1':
            alice+=1
        else:
            alice+=2
    elif scores[i] == 'B':
        i+=1
        if scores[i]=='1':
            barb+=1
        else:
            barb+=2

#print(alice, barb)
if alice>barb:
    print('A')
else:
    print('B')