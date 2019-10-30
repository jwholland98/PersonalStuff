inp=input()

winners=[]
inp2=[]
for i in range(eval(inp)):
    school, team=input().split()
    inp2.append([school, team])
for i in inp2:
    if not i[0] in winners:
        winners.append(i[0])
        print(i[0], i[1])
    if len(winners)==12:
        break