hand = input().split()
totals={}
for i in hand:
    if i[0] not in totals:
        totals.update({i[0]:1})
    else:
        totals[i[0]]+=1

max=0
for i in totals.keys():
    if totals[i]>max:
        max = totals[i]
print(max)