
// 1. Import Statement  (s):
import java.util.Collections;
import java.util.PriorityQueue;
import java.util.Scanner;

// 2. Class Declaration:
public class JerahmilJayFelipe_PriorityQueueTask2 {

    /**
     * 
     * Re-create the program that you have created and print the integers in
     * descending order. The output should now look like the one below:
     * 
     * Enter 6 integers:
     * Enter integer #1: 52
     * Enter integer #2: 60
     * Enter integer #3: 30
     * Enter integer #4: 28
     * Enter integer #5: 10
     * Enter integer #6: 15
     * 
     * Integers in descending order:
     * 60
     * 52
     * 30
     * 28
     * 15
     * 10
     * 
     * reference for the decending order of the priority queue:
     * https://www.geeksforgeeks.org/priority-queue-in-reverse-order-in-java/
     * 
     */


    // 3. Main Method:
    public static void main(String[] args) {

        // 4. Creating a Objects of the PriorityQueue and Scanner class:
        PriorityQueue<Integer> pq = new PriorityQueue<Integer>(
                Collections.reverseOrder());
        Scanner in = new Scanner(System.in);

        // 5. Adding Elements to the PriorityQueue:
        System.out.println("Enter 6 integers: ");
        for (int i = 0; i < 6; i++) {
            System.out.print("Enter integer #" + (i + 1) + ": ");
            pq.add(in.nextInt());
        }

        // 6. Printing the elements of the PriorityQueue:
        System.out.println("\nIntegers in ascending order: ");
        System.out.println(pq.poll()); // retrieves and removes the head of this queue
        System.out.println(pq.poll());
        System.out.println(pq.poll());
        System.out.println(pq.poll());
        System.out.println(pq.poll());
        System.out.println(pq.poll());

        in.close();
    }
}
