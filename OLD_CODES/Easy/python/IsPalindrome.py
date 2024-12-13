def IsPalindrome(nums: list[int]) -> bool:
    numsLen = len(nums)
    if (numsLen == 1):
        return True
    if (numsLen == 2):
        return nums[0] == nums[1]
    
    left = 0
    right = numsLen - 1

    while left < right:
        if (nums[left] != nums[right]):
            return False
        left += 1
        right -= 1 
    return True


arr = [5, 5]
print(IsPalindrome(arr))