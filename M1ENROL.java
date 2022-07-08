import java.util.Scanner;

class M1ENROL {

	public static void main(String[] args) throws Exception {
		Scanner in = new Scanner(System.in);
		for (int t = in.nextInt(); t > 0; t--) {
			int x = in.nextInt();
			int y = in.nextInt();
			System.out.println((x > y) ? 0 : (y - x));
		}
		in.close();
	}
}
