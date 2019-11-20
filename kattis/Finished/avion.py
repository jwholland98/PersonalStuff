answer = ''
numFound = 0
for i in range(5):
    blimp = input()
    if "FBI" in blimp:
        if numFound == 0:
            answer+=str(i+1)
        else:
            answer+=' '+str(i+1)
        numFound+=1
if numFound == 0:
    print("HE GOT AWAY!")
else:
    print(answer)
