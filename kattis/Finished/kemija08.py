inp = input()
vowels=['a','e','i','o', 'u']
answer=''
i=0
while i < len(inp):
    answer+=inp[i]
    if inp[i] in vowels:
        i+=2
    i+=1
print(answer)