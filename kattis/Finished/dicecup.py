inp,inp2=input().split()
odds={}
for i in range(1,eval(inp)+1):
    for k in range(1, eval(inp2)+1):
        if (i+k) in odds:
            odds[(i+k)]+=1
        else:
            odds.update({(i+k):1})

largest=[2]
for i in odds.keys():
    if odds[i]>odds[largest[0]]:
        largest.clear()
        largest.append(i)
    elif odds[i]==odds[largest[0]]:
        largest.append(i)

for i in largest:
    print(i)
