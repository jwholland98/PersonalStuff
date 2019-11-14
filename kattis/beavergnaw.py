import math

while(True):
    D, V = map(int, input().split())
    if D == 0:
        break
    Dv = math.pi*pow(1/D, 2)*D  #volume of full cylinder
    #trunc = 2/3*pi*(pow(r1, 2) + r1*r2 + pow(r2, 2))*(D-d)/2
    #answer = Dv+V - trunc
    x = (2*(-6*V+6*D-math.pi*pow(D, 3)))/math.pi
    answer = x ** (1. / 3)
    print(answer)