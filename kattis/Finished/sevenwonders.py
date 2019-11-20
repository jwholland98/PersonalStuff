inp = input()

tTotal=0
cTotal=0
gTotal=0
for i in inp:
    if i=='T':
        tTotal+=1
    elif i=='C':
        cTotal+=1
    elif i=='G':
        gTotal+=1

smallest=[tTotal, cTotal, gTotal]
smallest.sort()
print(pow(tTotal, 2)+pow(cTotal, 2)+pow(gTotal, 2)+smallest[0]*7)
