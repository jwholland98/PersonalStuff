x, y, z = map(int, input().split())
if(x+y==z):
    print(x,'+',y,'=',z,sep="")
elif(x==y+z):
    print(x,'=',y,'+',z,sep="")
elif(x==y-z):
    print(x,'=',y,'-',z,sep="")
elif(x-y==z):
    print(x,'-',y,'=',z,sep="")
elif(x==y/z):
    print(x,'=',y,'/',z,sep="")
elif(x/y==z):
    print(x,'/',y,'=',z,sep="")
elif(x==y*z):
    print(x,'=',y,'*',z,sep="")
elif(x*y==z):
    print(x,'*',y,'=',z,sep="")