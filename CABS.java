import java.util.Scanner;

class CABS {
    static void check(int first, int second) {
        if (first > second)
            System.out.println(first);
        else
            System.out.println(second);
    }

    public static void main(String[] args) throws Exception {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        for (int i = 0; i < n; i++) {
            int first = in.nextInt();
            int second = in.nextInt();
            check(first, second);
        }
        in.close();
    }
}
