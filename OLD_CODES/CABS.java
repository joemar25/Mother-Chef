import java.util.Scanner;

class CABS {

    static void check(int x, int y) {
        if (x == y)
            System.out.println("ANY");
        else if (x < y)
            System.out.println("FIRST");
        else
            System.out.println("SECOND");
    }

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int t = in.nextInt();
        while (t > 0) {
            int x = in.nextInt();
            int y = in.nextInt();
            check(x, y);
            t--;
        }
        in.close();
    }
}