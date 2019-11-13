n = int(input())
for i in range(n):
    g = int(input())
    c = input().split()
    frequency={}
    for j in c:
        if j not in frequency:
            frequency.update({j:1})
        else:
            frequency[j]+=1
    for j in frequency.keys():
        if frequency[j]%2==1:
            print("Case #"+str(i+1)+':', j)
            break