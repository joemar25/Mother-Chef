import java.util.Scanner;

class MANIPULATE {

	public static void main(String[] args) throws Exception {
		Scanner in = new Scanner(System.in);
		int t = in.nextInt();
		while (t > 0) {
			int x = in.nextInt();
			int y = in.nextInt();
			if (x >= y)
				System.out.println("YES");
			else
				System.out.println("NO");
			t--;
		}
		in.close();
	}
}
