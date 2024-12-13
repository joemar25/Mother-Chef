def twoSum(nums, target):
    n = len(nums)
    lo = 0
    hi = n - 1

    if (n == 2):
        return [0, 1]

    while (lo < n - 1) :
        while (hi > lo):
            if ((nums[lo] + nums[hi]) == target):
                return nums[lo], nums[hi]
            hi -= 1
        lo += 1
    return nums[lo], nums[hi]

print(twoSum([3,2,4], 6))