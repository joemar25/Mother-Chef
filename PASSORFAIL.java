import java.util.Scanner;

class PASSORFAIL {

	static void exam(int n, int x, int p) {
		int penalty = x - n;
		int score = x * 3;
		int total = penalty + score;
		if (p <= total)
			System.out.println("PASS");
		else
			System.out.println("FAIL");
	}

	public static void main(String[] args) throws Exception {
		Scanner in = new Scanner(System.in);
		int t = in.nextInt();
		while (t > 0) {
			int n = in.nextInt();
			int x = in.nextInt();
			int p = in.nextInt();
			exam(n, x, p);
			t--;
		}
		in.close();
	}
}