n = input()
while(True):
    num = 0
    for i in n:
        num+=eval(i)
    if (eval(n)/num).is_integer():
        break
    else:
        n = int(n)
        n+=1
        n = str(n)
print(n)