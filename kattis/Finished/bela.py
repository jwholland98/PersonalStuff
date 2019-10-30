inp, inp2 = input().split()

score=0
for i in range(eval(inp)*4):
    inp3=input()
    if inp3[0]=='A':
        score+=11
    elif inp3[0]=='K':
        score+=4
    elif inp3[0]=='Q':
        score+=3
    elif inp3[0]=='J':
        if inp3[1]==inp2:
            score+=20
        else:
            score+=2
    elif inp3[0]=='T':
        score+=10
    elif inp3[0]=='9':
        if inp3[1]==inp2:
            score+=14
print(score)