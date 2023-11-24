import java.util.Scanner;

class Node {
    // a node represents a single element in the binary search tree
    // it has an integer value, and references to its left and right child nodes
    int data;
    Node left, right;

    // this is the constructor to create a new node with the given data value
    public Node(int data) {
        this.data = data;
        left = right = null;
    }
}

class BinarySearchTree {
    /*
     * a binary search tree is a tree data structure where each internal node
     * contains a value
     * greater than all the values in its left subtree and less than all the values
     * in its right subtree
     */
    Node root;

    // inserts a new node with the given data value into the binary search tree
    public void insert(int data) {
        Node newNode = new Node(data); // create a new node with the given data value

        if (root == null) {
            root = newNode; // the tree is empty, make the new node the root
            return;
        }

        // start at the root node
        Node current = root;
        Node parent = null;

        // traverse the tree until the appropriate position for the new node is found
        while (current != null) {
            parent = current; // keep track of the current node's parent

            // if the new data value is less than the current node's value, go left
            if (data < current.data) {
                current = current.left;
            } else {
                // if the new data value is greater than or equal to the current node's value,
                // go right
                current = current.right;
            }
        }

        // Insert the new node as the child of the parent node
        if (data < parent.data) {
            parent.left = newNode;
        } else {
            parent.right = newNode;
        }
    }

    // Searches for the given data value in the binary search tree
    public boolean search(int data) {
        // Start at the root node
        Node current = root;

        /*
         * Traverse the tree until the data value is found
         * or the end of the tree is reached
         */
        while (current != null) {
            if (data == current.data)
                return true; // data value is equal to the current node's value, return true
            else if (data < current.data)
                current = current.left; // data value is less than the current node's value, go left
            else
                current = current.right; // data value is greater than or equal to the current node's value, go right
        }
        return false;
    }

    /*
     * do an in-order traversal of the binary search tree,
     * printing each node's value
     */
    public void inorderTraversal(Node node) {
        if (node == null) { // if the node is null, return
            return;
        }

        // Traverse the left subtree recursively
        inorderTraversal(node.left);
        System.out.println(node.data + " ");
        // Traverse the right subtree recursively
        inorderTraversal(node.right);
    }
}

public class JerahmilJayFelipeBST {
    public static void main(String[] args) {
        BinarySearchTree bst = new BinarySearchTree();
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter 10 integers to insert into the BST:");
        for (int i = 0; i < 10; i++) {
            int data = scanner.nextInt();
            bst.insert(data);
        }

        System.out.println("Enter a number to search in the BST:");
        int searchKey = scanner.nextInt();

        if (bst.search(searchKey))
            System.out.println(searchKey + " is present in the BST.");
        else
            System.out.println(searchKey + " is not present in the BST.");

        scanner.close();
    }
}