import java.util.Scanner;

public class JerahmilJayFelipe_BSIT2A_InsertionSort {

    static int i; // i is a global variable so that the initialization for i is not needed in every method

    public static void main(String[] args) {

        System.out.print("Enter the number of elements: ");
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int[] array = new int[n];

        System.out.println("Enter the elements:");
        for (i = 0; i < n; i++) {
            array[i] = scanner.nextInt();
        }

        System.out.println("Original array:");
        printArray(array);

        // calling insertion Sort to main method
        insertionSort(array);
        System.out.println("Sorted array:");
        printArray(array);

        scanner.close();

    }

    // reference: https://www.geeksforgeeks.org/insertion-sort/
    // does not need to put n in a variable, i directly put it in the statement
    static void insertionSort(int[] array) {
        for (i = 1; i < array.length; i++) {
            int key = array[i];
            int j = i - 1;
            while (j >= 0 && array[j] > key) {
                array[j + 1] = array[j];
                j = j - 1;
            }
            array[j + 1] = key;
        }
    }

    static void printArray(int[] array) {
        for (i = 0; i < array.length; i++) {
            System.out.print(array[i] + " ");
        }
        System.out.println();
    }
}

/*
 * This oUtputs something like this:
 * Enter the number of elements: 5
 * Enter the elements:
 * 1
 * 6
 * 5
 * 8
 * 6
 * Original array:
 * 1 6 5 8 6
 * Sorted array:
 * 1 5 6 6 8
 */