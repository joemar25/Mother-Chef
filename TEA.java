import java.util.Scanner;

class TEA {

    static int answer(int x, int y, int z) {
        int ans = x / y;
        if (x % y == 0)
            ans *= z;
        else
            ans = (ans + 1) * z;
        return ans;
    }

    public static void main(String[] args) throws Exception {
        Scanner in = new Scanner(System.in);
        int x, y, z, t = in.nextInt();
        while (t > 0) {
            x = in.nextInt();
            y = in.nextInt();
            z = in.nextInt();
            System.out.println(answer(x, y, z));
            t--;
        }
        in.close();
    }
}

// 68612155