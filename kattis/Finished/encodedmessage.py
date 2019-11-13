import math

n = int(input())

for i in range(n):
    mess = input()
    lmess = len(mess)
    size = int(math.sqrt(lmess))
    arr = []
    for i in range(size):
        arr.append([None] * size)
    pos=0
    for i in range(size):
        for k in range(size):
            arr[i][k] = mess[pos]
            pos+=1
    for i in range(size-1, -1, -1):
        for k in range(size):
            print(arr[k][i], end='')
    print()