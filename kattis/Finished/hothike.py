n = input()

days = list(map(int,input().split()))

best = 1000
minDay=0
for i in range(len(days)-2):
    if days[i]>=days[i+2]:
        if days[i]<best:
            best=days[i]
            minDay=i+1
    elif days[i]<days[i+2]:
        if days[i+2]<best:
            best=days[i+2]
            minDay = i+1
print(minDay, best)
