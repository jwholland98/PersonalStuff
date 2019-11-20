n, T = map(int, input().split())

nums = input().split()
for i in range(len(nums)):
    nums[i]=int(nums[i])

answer=0
total=0
for i in nums:
    total+=i
    if total>T:
        break
    answer+=1
print(answer)
