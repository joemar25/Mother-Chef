import java.util.Scanner;

public class JerahmilJayFelipe_BSIT2A_BubbleSort {

    static int i;

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter the number of rows in the 2D array:");
        int rows = scanner.nextInt();

        System.out.println("Enter the number of columns in the 2D array:");
        int cols = scanner.nextInt();

        int[][] arr = new int[rows][cols];

        System.out.println("Enter the elements of the 2D array:");
        for (i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                arr[i][j] = scanner.nextInt();
            }
        }

        System.out.println("Before Bubble Sort:");
        for (int[] row : arr) {
            printArray(row, cols);
        }

        for (int[] row : arr) {
            bubbleSort(row, cols);
        }

        System.out.println("After Bubble Sort:");
        for (int[] row : arr) {
            printArray(row, cols);
        }

        scanner.close();

    }

    // referencce: https://www.geeksforgeeks.org/bubble-sort/
    static void bubbleSort(int arr[], int n) {
        int j, temp;
        boolean swapped;
        for (i = 0; i < n - 1; i++) {
            swapped = false;
            for (j = 0; j < n - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                    swapped = true;
                }
            }

            // If no two elements were swapped by inner loop, then break
            if (swapped == false)
                break;
        }
    }

    static void printArray(int arr[], int size) {
        for (i = 0; i < size; i++)
            System.out.print(arr[i] + " ");
        System.out.println();
    }
}