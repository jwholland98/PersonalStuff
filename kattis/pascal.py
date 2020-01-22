def isPrime(n) : 
    if (n <= 1) : 
        return False
    if (n <= 3) : 
        return True
    if (n % 2 == 0 or n % 3 == 0) : 
        return False
  
    i = 5
    while(i * i <= n) : 
        if (n % i == 0 or n % (i + 2) == 0) : 
            return False
        i = i + 6
  
    return True

n=int(input())
answer=0
if not isPrime(n):
    for i in range(2, n):
        if n%i==0:
            answer=round(n-(n/i))
            break
else:
    answer=n-2
#i = n-1
#while(i>1):
#    answer+=1
#    i-=1
print(answer)