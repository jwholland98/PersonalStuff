inp = input()

for i in range(eval(inp)):
    answer=''
    inp2 = input()
    inp3 = input()
    for k in range(len(inp2)):
        if inp2[k]==inp3[k]:
            answer+='.'
        else:
            answer+='*'
    print(inp2)
    print(inp3)
    print(answer)
    print()