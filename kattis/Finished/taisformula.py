n = int(input())

points=[]
for i in range(n):
    t, v = input().split()
    t, v = float(t), float(v)
    points.append([t,v])

answer=0
for i in range(len(points)):
    if i != len(points)-1:
        a=points[i][1]
        b=points[i+1][1]
        h=abs(points[i][0]-points[i+1][0])
        answer+=((a+b)/2)*h
print(answer/1000)