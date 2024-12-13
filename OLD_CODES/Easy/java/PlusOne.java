package java;
// https://leetcode.com/problems/plus-one/

public class PlusOne {
    public int[] plusOne(int[] digits) {
        int sum, n = digits.length;
        int carry = 1;

        int i = n - 1;
        while (i >= 0) {
            sum = digits[i] + carry;
            digits[i] = sum % 10;
            carry = sum / 10;
            if (carry == 0) {
                break;
            }
            i--;
        }

        if (carry > 0) {
            int[] result = new int[n + 1];
            result[0] = carry;
            i = 0;
            while (i < n) {
                result[i + 1] = digits[i];
                i++;
            }
            return result;
        } else {
            return digits;
        }
    }
}
