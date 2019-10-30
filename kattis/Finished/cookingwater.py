inp=input()

ranges=[]
for i in range(eval(inp)):
    inp2,inp3=input().split()
    ranges.append([eval(inp2),eval(inp3)])

for i in ranges:
    flag=False
    for k in range(i[0],i[1]+1):
        for j in ranges:
            if k not in range(j[0],j[1]+1):
                flag=True
            if flag==True:
                break
        if flag==False:
            print('gunilla has a point')
            exit()
print('edward is right')