l, r = map(int,input().split())

if l!=r:
    if l > r:
        print("Odd", l*2)
    else:
        print("Odd", r*2)
elif l==0 and r==0:
    print("Not a moose")
else:
    print("Even", l*2)