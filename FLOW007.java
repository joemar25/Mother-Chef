import java.util.Scanner;

class FLOW001 {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int x, y, t = in.nextInt();
        while (t > 0) {
            x = in.nextInt();
            y = in.nextInt();
            System.out.println(x + y);
            t--;
        }
        in.close();
    }

}