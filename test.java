class test {

	static final int Q_SIZE = 100;
	static final int F_CORRECT = 3;
	static final int F_WRONG = -1;

	public static void main(String[] args) throws Exception {
		int x = 32 / 3;
		int correct = (int) Math.ceil((x / 3) * 3);
		System.out.println(x / 3);
	}
}
/*
 * 4
 * 0
 * 100
 * 32
 * 18
 * 
 * 0
 * 2
 * 1
 * 0
 */