inp = int(input())

for i in range(inp):
    inp2=input()
    if inp2 == "" or ' ' not in inp2:
        print('\n')
        continue
    inp2 = inp2.split()
    if inp2[0] == "simon" and inp2[1] == "says":
        for i in range(2, len(inp2)):
            print(inp2[i])
    else:
        print('\n')