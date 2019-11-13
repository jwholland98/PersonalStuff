l, x = map(int,input().split())

answer = 0
current = 0
for i in range(x):
    go, num = input().split()
    num = int(num)
    if go == "enter":
        if current+num > l:
            answer+=1
        else:
            current+=num
    else:
        current-=num
print(answer)