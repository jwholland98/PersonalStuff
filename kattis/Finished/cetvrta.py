xnums={}
ynums={}

for i in range(3):
    x, y = input().split()
    if x not in xnums:
        xnums.update({x:1})
    else:
        xnums[x]+=1
    if y not in ynums:
        ynums.update({y:1})
    else:
        ynums[y]+=1


for i in xnums:
    if xnums[i] % 2 == 1:
        x=i
for i in ynums:
    if ynums[i] % 2 == 1:
        y=i
print(x, y)