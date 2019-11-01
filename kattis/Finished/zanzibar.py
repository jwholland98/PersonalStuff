T = int(input())

for i in range(T):
    seq = [int(x) for x in input().split()]
    del seq[-1]
    answer=0
    for i in range(len(seq)-1):
            if seq[i+1]-seq[i]*2>0:
                answer+=seq[i+1]-seq[i]*2
    print(answer)
            