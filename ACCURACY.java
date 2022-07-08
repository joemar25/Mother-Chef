import java.util.Scanner;

class ACCURACY {

	public static void main(String[] args) throws Exception {
		Scanner in = new Scanner(System.in);
		int x, t = in.nextInt();
		while (t > 0) {
			x = in.nextInt();
			if (x == 0 || x % 3 == 0) {
				System.out.println(0);
			} else {
				int n = (x / 3) + 1;
				System.out.println(n * 3 - x);
			}
			t--;
		}
		in.close();
	}
}