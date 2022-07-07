import java.util.Scanner;

class Codechef
{
    static void check(int x) {
        if (0 <= x && x <= 1000 && x >= 750)
    	    System.out.println("YES");
    	else
    	    System.out.println("NO");
    }
    
	public static void main (String[] args) throws Exception
	{
		Scanner in = new Scanner(System.in);
		int x = in.nextInt();
		check(x);
        in.close();
	}
}
