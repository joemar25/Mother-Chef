import java.util.Scanner;

class ENSPACE {
	public static void main(String[] args) throws Exception {
		try (Scanner in = new Scanner(System.in)) {
			int t = in.nextInt();
			for (; t > 0; t--) {
				int n = in.nextInt();
				int x = in.nextInt();
				int y = in.nextInt();
				if (n >= (x + y * 2)) // (x * 1 + y * 2)
					System.out.println("YES");
				else
					System.out.println("NO");

			}
		}
	}
}
