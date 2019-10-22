import math

inp = input()
for i in range(eval(inp)):
    inp2=input()
    fact=math.factorial(eval(inp2))
    print(str(fact)[-1])
