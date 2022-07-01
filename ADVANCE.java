import java.util.*;
import java.io.*;

class ADVANCE {
    static Scanner in = new Scanner(System.in);

    static void solve(int x, int y) {
        if (y >= x && y <= x + 200)
            System.out.println("YES");
        else
            System.out.println("NO");
    }

    public static void main(String[] args) throws Exception {
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
