
inp=input()
total=0
for i in range(eval(inp)):
    inp2, inp3 = input().split()
    total+=eval(inp2)*eval(inp3)
print('%.3f'%total)