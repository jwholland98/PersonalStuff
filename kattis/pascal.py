n=int(input())
answer=0
for i in range(2, n):
    if n%i==0:
        answer=round(n-(n/i))
        print(i)
        break

print(answer)