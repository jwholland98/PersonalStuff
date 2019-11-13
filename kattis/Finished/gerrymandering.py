import math

P, D = map(int, input().split())

def normal_round(n):
    if n - math.floor(n) <= 0.5:
        return math.floor(n)
    return math.ceil(n)

dist = {}
for i in range(P):
    i, a, b = map(int, input().split())
    if i in dist:
        dist[i][0]+=a
        dist[i][1]+=b
    else:
        dist.update({i:[a, b]})
twasteA = 0
twasteB = 0
tvotes = 0
for i in sorted(dist.keys()):
    wasteA = 0
    wasteB = 0
    if dist[i][0]>dist[i][1]:
        wasteB = int(dist[i][1])
        wasteA = (abs(dist[i][0] - normal_round(((dist[i][0]+dist[i][1])/2)+1)))
        print('A', wasteA, wasteB)
    else:
        wasteA = int(dist[i][0])
        wasteB = (abs(dist[i][1] - normal_round(((dist[i][0]+dist[i][1])/2)+1)))
        print('B', wasteA, wasteB)
    twasteA+=wasteA
    twasteB+=wasteB
    tvotes+=dist[i][0]+dist[i][1]

print(abs(twasteA-twasteB)/tvotes)