inp = input().split()
freq = {}
for i in inp:
    if i not in freq:
        freq.update({i:1})
    else:
        freq[i]+=1
for i in freq.keys():
    if freq[i]>1:
        print('no')
        exit()
print('yes')