g, s, c = input().split()
g, s, c = int(g), int(s), int(c)

total = (g*3)+(s*2)+c
if total>=8:
    print("Province or Gold")
elif total>=6:
    print("Duchy or Gold")
elif total>=5:
    print("Duchy or Silver")
elif total>=3:
    print("Estate or Silver")
elif total>=2:
    print("Estate or Copper")
else:
    print("Copper")