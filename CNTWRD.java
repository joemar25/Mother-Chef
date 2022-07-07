import java.util.Scanner;

class CNTWRD {

	public static void main(String[] args) throws Exception {
		try (Scanner in = new Scanner(System.in)) {
			int t = in.nextInt();
			for (; t > 0; t--) {
				int x = in.nextInt();
				int y = in.nextInt();
				System.out.println(x * y);
			}
		}
	}
}
