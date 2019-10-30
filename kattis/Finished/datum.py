import datetime

inp, inp2 = input().split()

print(datetime.datetime(2009, eval(inp2), eval(inp)).strftime('%A'))