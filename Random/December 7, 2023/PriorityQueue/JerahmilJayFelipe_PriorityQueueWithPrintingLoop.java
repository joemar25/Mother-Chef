package PriorityQueue;
// 1. Import Statement (s):
import java.util.PriorityQueue;
import java.util.Scanner;

public class JerahmilJayFelipe_PriorityQueueWithPrintingLoop {
    /**
     * 
     * A PriorityQueue is used when the objects are supposed to be processed based
     * on the priority. It is known that a Queue follows the First-In-First-Out
     * algorithm, but sometimes the elements of the queue are needed to be processed
     * according to the priority, that’s when the PriorityQueue comes into play.
     *
     * The PriorityQueue is based on the priority heap. The elements of the priority
     * queue are ordered according to the natural ordering, or by a Comparator
     * provided at queue construction time, depending on which constructor is used.
     * 
     * Task #1:
     * Create Java program that uses a PriorityQueue and Scanner to take 6
     * integers as input and then prints them in ascending order using the
     * priority queue. The output should look like this:
     * 
     * Enter 6 integers:
     * Enter integer #1: 52
     * Enter integer #2: 60
     * Enter integer #3: 30
     * Enter integer #4: 28
     * Enter integer #5: 10
     * Enter integer #6: 15
     * 
     * Integers in ascending order:
     * 10
     * 15
     * 28
     * 30
     * 52
     * 60
     */

    // 3. Main Method:
    public static void main(String[] args) {

        // 4. Creating a Objects of the PriorityQueue and Scanner class:
        PriorityQueue<Integer> pq = new PriorityQueue<Integer>();
        Scanner in = new Scanner(System.in);

        // 5. Adding Elements to the PriorityQueue:
        System.out.println("Enter 6 integers: ");
        for (int i = 0; i < 6; i++) {
            System.out.print("Enter integer #" + (i + 1) + ": ");
            pq.add(in.nextInt());
        }

        // 6. Printing the elements of the PriorityQueue:
        System.out.println("\nIntegers in ascending order: ");
        // Check if the queue is empty, if not, poll the queue (retrieve)
        while (!pq.isEmpty())
            System.out.println(pq.poll());

    
        in.close();

    }
}
