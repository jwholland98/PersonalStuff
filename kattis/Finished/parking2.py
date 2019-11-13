t = int(input())
for i in range(t):
    n = int(input())
    stores = list(map(int, input().split()))
    stores.sort()
    total=0
    for i in range(len(stores)):
        if i !=len(stores)-1:
            total+=abs(stores[i]-stores[i+1])
    total*=2
    print(total)
