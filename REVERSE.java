import java.util.Scanner;

class Reserse {

    static String reverse(String str) {
        String temp = "";
        for (int i = (str.length() - 1); i >= 0; i--) {
            temp = str.charAt(i) + "";
        }
        return temp;
    }

    public static void main(String[] args) throws Exception {

        Scanner in = new Scanner(System.in);
        String rev = in.nextLine();
        System.out.println(reverse(rev));

        in.close();

    }

}