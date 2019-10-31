count=0
while(True):
    inp=input()
    if inp=='0':
        break
    count+=1
    odd=[]
    even=[]
    flag=True
    for i in range(eval(inp)):
        inp2=input()
        if flag:
            odd.append(inp2)
        else:
            even.append(inp2)
        flag=not flag
    print('SET ', count)
    for i in odd:
        print(i)
    for i in even[::-1]:
        print(i)
