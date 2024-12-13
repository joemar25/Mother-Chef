package java;

class TwoSum {
    public int[] twoSum(int[] nums, int target) {

        int n = nums.length;
        int lo = 0, hi = n - 1;
        int indices[] = { 0, 1 };

        if (n == 2)
            return indices;

        while (lo < n - 1) {
            while (hi > lo) {
                if ((nums[lo] + nums[hi]) == target) {
                    indices[0] = lo;
                    indices[1] = hi;
                    return indices;
                }
                hi -= 1;
            }
            lo += 1;
            hi = n - 1;
        }
        return indices;
    }
}