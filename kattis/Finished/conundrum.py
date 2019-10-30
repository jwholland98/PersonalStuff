inp=input()

currentCheck=0
answer=0
for i in range(len(inp)):
    if currentCheck==0:
        if inp[i]!='P':
            answer+=1
    elif currentCheck==1:
        if inp[i]!='E':
            answer+=1
    elif currentCheck==2:
        if inp[i]!='R':
            answer+=1
    if currentCheck==2:
        currentCheck=0
    else:
        currentCheck+=1
print(answer)