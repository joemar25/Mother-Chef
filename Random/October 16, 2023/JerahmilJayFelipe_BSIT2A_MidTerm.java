/**
 * Jerahmil Jay Felipe
 * BSIT 2A
 * October 16, 2023
 * Midterm
 */

public class JerahmilJayFelipe_BSIT2A_MidTerm {

    public static void main(String[] args) {

        int n = 5;
        int[] array = { 4, 2, 9, 1, 5, 3, 10 };

        System.out.println("Sum of all numbers from 1 to " + n + " is: " + sum(n));
        System.out.println("Minimum element in the array is: " + findMin(array, 0, array[0]));
        System.out.println("Product of all numbers in the array is: " + product(array, 0));
    }

    // recursive method to calculate the sum of all numbers from 1 to n
    static int sum(int n) {
        if (n <= 0)
            return 0;
        else
            return n + sum(n - 1);
    }

    // recursive method to find the minimum element in an array
    public static int findMin(int[] array, int index, int min) {
        if (index == array.length)
            return min;
        if (array[index] < min)
            min = array[index];
        return findMin(array, index + 1, min);
    }

    // recursive method to calculate the product of all numbers in an array
    public static int product(int[] array, int index) {
        if (index == array.length)
            return 1;
        return array[index] * product(array, index + 1);
    }

}