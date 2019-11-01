n = int(input())

n = bin(n)
n = str(n)

newN=''
for i in reversed(n):
    newN+=i
newN = newN[:-2]
newN = int(newN, 2)
print(newN)
