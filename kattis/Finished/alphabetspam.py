inp=input()

length=len(inp)
ups=0
lows=0
spaces=0
symbols=0
for i in inp:
    if i.isupper():
        ups+=1
    elif i.islower():
        lows+=1
    elif i == '_':
        spaces+=1
    else:
        symbols+=1
print(spaces/length)
print(lows/length)
print(ups/length)
print(symbols/length)