inp=input()
for i in range(eval(inp)):
    places=[]
    inp2=input()
    for k in range(eval(inp2)):
        inp3=input()
        if inp3 not in places:
            places.append(inp3)
    print(len(places))
    