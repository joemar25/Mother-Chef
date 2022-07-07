import java.util.Scanner;

class COURSEREG {

    static void check(int n, int m, int k) {
        int size = n + k;
        if (size <= m)
            System.out.println("Yes");
        else
            System.out.println("No");
    }

    public static void main(String[] args) throws Exception {
        Scanner in = new Scanner(System.in);
        int t = in.nextInt();
        for (; t > 0; t--) {
            int n = in.nextInt();
            int m = in.nextInt();
            int k = in.nextInt();
            check(n, m, k);
        }
        in.close();
    }
}
