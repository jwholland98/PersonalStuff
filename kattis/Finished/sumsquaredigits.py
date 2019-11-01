P = int(input())
for i in range(P):
    K, b, n = input().split()
    K, b, n = int(K), int(b), int(n)
    convert=[]
    while n != 0:
        convert.append(n%b)
        n/=b
        n=int(n)
    answer=0
    for i in convert:
        answer+=pow(i, 2)
    print(K, answer)
