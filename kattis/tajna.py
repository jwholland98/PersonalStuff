from numpy import sqrt

inp=input()

rows=int(sqrt(len(inp)))

columns=rows
if not rows*columns==len(inp):
    columns+=1
print(rows, columns)