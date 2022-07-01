import java.util.*;
import java.io.*;

class CABS {
    static void check(int first, int second) {
        if (first < second)
            System.out.println("FIRST");
        else if (first > second)
            System.out.println("SECOND");
        else
            System.out.println("ANY");
    }

    public static void main(String[] args) throws Exception {
        InputStream inputStream = System.in;
        Scanner in = new Scanner(inputStream);
        int n = in.nextInt();
        for (int i = 0; i < n; i++) {
            int first = in.nextInt();
            int second = in.nextInt();
            check(first, second);
        }
        in.close();
    }
}
