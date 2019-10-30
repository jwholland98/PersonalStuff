inp,inp2,inp3=input().split()
for i in range(1,eval(inp3)+1):
    check1=str(i/eval(inp))
    check2=str(i/eval(inp2))
    if check1[-1]=='0' and check2[-1]=='0':
        print('FizzBuzz')
    elif check1[-1]=='0':
        print('Fizz')
    elif check2[-1]=='0':
        print('Buzz')
    else:
        print(i)