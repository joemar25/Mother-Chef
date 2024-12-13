import java.util.Scanner;

class INTEST {
    
	public static void main(String[] args) {
	    
		Scanner in = new Scanner(System.in);
		int res = 0;
		int n = in.nextInt();
		int k = in.nextInt();
		
		
		while (n > 0) {
			int x = in.nextInt();
			if (x % k == 0)
				res++;
			n--;
		}
		System.out.println(res);
        in.close();
	}
}