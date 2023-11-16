import java.util.Scanner;

public class JerahmilJayFelipe_BSIT2A_SelectionSort {

    static int i; // i is a global variable so that the initialization for i is not needed in every method

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number of elements: ");
        int n = scanner.nextInt();
        int[] array = new int[n];

        System.out.println("Enter the elements:");
        for (i = 0; i < n; i++) {
            array[i] = scanner.nextInt();
        }

        System.out.println("Original array:");
        printArray(array);

        // Selection Sort
        selectionSort(array);
        System.out.println("Sorted array:");
        printArray(array);

        scanner.close();
    }

    // reference: https://www.geeksforgeeks.org/selection-sort/
    static void selectionSort(int[] array) {
        for (i = 0; i < array.length - 1; i++) {
            int min_idx = i;
            for (int j = i + 1; j < array.length; j++)
                if (array[j] < array[min_idx])
                    min_idx = j;
            int temp = array[min_idx];
            array[min_idx] = array[i];
            array[i] = temp;
        }
    }

    static void printArray(int[] array) {
        for (i = 0; i < array.length; i++) {
            System.out.print(array[i] + " ");
        }
        System.out.println();
    }
}