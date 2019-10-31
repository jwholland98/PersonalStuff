queens=[]

for i in range(8):
    inp=input()
    for k in range(8):
        if inp[k]=='*':
            queens.append([i,k])
if len(queens) != 8:
    print('invalid')
    exit()
#print(queens)

for i in queens:
    for k in queens:
        if not (k[0]==i[0] and k[1]==i[1]):
            if k[0]==i[0]:
                print('invalid')
                exit()
            elif k[1]==i[1]:
                print('invalid')
                exit()
            elif (abs(k[0]-i[0]))==(abs(k[1]-i[1])):
                print('invalid')
                exit()
print('valid')