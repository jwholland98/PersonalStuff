n = int(input())

board = []
for i in range(n):
    board.append(input())

for i in range(n):
    balance=0
    count=0
    flag=False
    for k in range(n):
        if board[i][k] == 'W':
            if not flag:
                count=0
                flag=not flag
            count+=1
            balance+=1
        elif board[i][k] == 'B':
            if flag:
                count=0
                flag=not flag
            count+=1
            balance-=1
        if count>=3:
            print('in row')
            print('0')
            exit()
    if balance!=0:
        print('unequal1')
        print('0')
        exit()
    balance=0
    count=0
    flag=False
    for k in range(n):
        if board[k][i] == 'W':
            if not flag:
                count=0
                flag=not flag
            count+=1
            balance+=1
        elif board[k][i] == 'B':
            if flag:
                count=0
                flag=not flag
            count+=1
            balance-=1
        if count>=3:
            print("count:", count)
            print('in column')
            print('0')
            exit()
    if balance!=0:
        print('unequal2')
        print('0')
        exit()

"""for i in range(n):
    w=0
    b=0
    count=0
    flag=False
    for k in range(n):
        if board[k][i] == 'W':
            if not flag:
                count=0
                flag=not flag
            count+=1
            w+=1
        elif board[k][i] == 'B':
            if flag:
                count=0
                flag=not flag
            count+=1
            b+=1
        if count>=3:
            #print('in column')
            print('0')
            exit()
            

    if b!=w:
        #print('unequal')
        print('0')
        exit()
        """
print('all good')
print('1')
    