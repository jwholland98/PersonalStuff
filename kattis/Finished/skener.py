R, C, Zr, Zc = input().split()
answer=[]
for i in range(eval(R)):
    inp=input()
    row=''
    for k in inp:
        for j in range(eval(Zc)):
            row+=k
    for k in range(eval(Zr)):
        answer.append(row)
for i in answer:
    print(i)