def twoSum(nums, target):
    n = len(nums)
    lo = 0
    hi = n - 1
    indices = [0, 1]

    if (n == 2):
        return indices

    while (lo < n - 1) :
        while (hi > lo):
            if ((nums[lo] + nums[hi]) == target):
                indices[0] = lo
                indices[1] = hi
                return indices
            hi -= 1
        lo += 1
    return indices

print(twoSum([3,2,4], 6))