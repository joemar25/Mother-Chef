import java.util.PriorityQueue;
import java.util.Scanner;

class Node {
    int data;
    Node left, right;

    // constructor
    public Node(int data) {
        this.data = data;
        left = right = null;
    }
}

class BinarySearchTree {
    Node root;

    // Metthod to insert a new node with the given data value into the bst
    public void insert(int data) {
        Node newNode = new Node(data);

        if (root == null) {
            root = newNode;
            return;
        }

        Node current = root;
        Node parent = null;

        while (current != null) {
            parent = current;

            if (data < current.data)
                current = current.left;
            else
                current = current.right;
        }

        if (data < parent.data)
            parent.left = newNode;
        else
            parent.right = newNode;
    }

    public void inorderTraversal(Node node) {
        if (node == null)
            return;
        inorderTraversal(node.left);
        System.out.print(node.data + " ");
        inorderTraversal(node.right);
    }
}

public class JerahmilJayFelipe_Finals {
    public static void main(String[] args) {
        BinarySearchTree bst = new BinarySearchTree();
        PriorityQueue<Integer> pq = new PriorityQueue<>();
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter 15 integers:");
        for (int i = 0; i < 15; i++) {
            int data = scanner.nextInt();
            bst.insert(data);
            pq.add(data);
        }

        System.out.println("Priority Queue elements:");
        while (!pq.isEmpty())
            System.out.print(pq.poll() + " ");
        System.out.println();

        System.out.println("Binary Search Tree:");
        bst.inorderTraversal(bst.root);
        scanner.close();
    }
}