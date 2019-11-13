n = input()
days=input().split()

min=10000000
answer=0
for i in range(len(days)):
    if eval(days[i])<min:
        min=eval(days[i])
        answer=i
print(answer)