public class JerahmilJayFelipe_BSIT2A_MidTermActivity1 {

    public static int sum(int n) {
        if (n <= 1) {
            return n;
        } else {
            return n + sum(n - 1);
        }
    }

    public static void main(String[] args) {
        int n = 10;
        int result = sum(n);
        System.out.println("N = " + n + ", Result = " + result);
    }

}