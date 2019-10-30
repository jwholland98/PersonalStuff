import math

inp=input()
for i in range(eval(inp)):
    v0,th,x1,h1,h2=input().split()
    v0=eval(v0)
    th=eval(th)
    x1=eval(x1)
    h1=eval(h1)
    h2=eval(h2)
    t=x1/(v0*math.cos(math.radians(th)))
    y=v0*t*math.sin(math.radians(th))-((.5)*(9.81)*(t*t))
    #print(y)
    if y>(h1+1) and y<(h2-1):
        print("Safe")
    else:
        print("Not Safe")