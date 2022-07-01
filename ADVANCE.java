import java.util.Scanner;

class ADVANCE {

    static void solve(int x, int y) {
        if (y >= x && y <= x + 200)
            System.out.println("YES");
        else
            System.out.println("NO");
    }

    public static void main(String[] args) throws Exception {
        Scanner in = new Scanner(System.in);
        int x, y, t = in.nextInt();
        while (t > 0) {
            x = in.nextInt();
            y = in.nextInt();
            solve(x, y);
            t--;
        }
        in.close();
    }

}