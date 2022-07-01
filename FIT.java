import java.util.Scanner;

class FIT {

	public static void main(String[] args) throws Exception {
		Scanner in = new Scanner(System.in);
		int t = in.nextInt();
		while (t > 0) {
			int x = in.nextInt();
			System.out.println(x * 10);
			t--;
		}
		in.close();
	}

}
