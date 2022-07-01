import java.util.Scanner;
import java.io.InputStream;

class Solution {
    public static void main(String[] args) throws Exception {
        InputStream inputStream = System.in;
        Scanner in = new Scanner(inputStream);
        int x = in.nextInt();
        float y = in.nextFloat();
        if (x % 5 == 0 && y >= x + 0.5f)
            System.out.println(y - x - 0.5f);
        else
            System.out.println(y);
        in.close();
    }
}
