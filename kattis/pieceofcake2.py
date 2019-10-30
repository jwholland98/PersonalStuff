n,h,v = input().split()
n, h, v = int(n), int(h), int(v)
squares=[]
squares.append(h*v*4)
squares.append(h*(n-v)*4)
squares.append((n-h)*v*4)
squares.append((n-h)*(n-v)*4)
squares.sort()
print(squares[-1])
