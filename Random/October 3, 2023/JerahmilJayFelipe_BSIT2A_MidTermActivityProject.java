/**
 * Jerahmil Jay Felipe
 * BSIT 2A
 * October 3, 2023
 * Midterm Activity 2 / Project
 * JJ NOTE: I'm not sure if this is the correct way to do it, but I tried my best to follow the instructions...
 */

public class JerahmilJayFelipe_BSIT2A_MidTermActivityProject {

    public static void main(String[] args) {

        int a = 5, b = 10, c = 15;

        /*
         * this will calculates the greatest common divisor (GCD) of
         * two integers using indirect recursion
         */
        System.out.println("Greatest Common Divisor: " + gcd(a, b));

        /*
         * this will use indirect recursion that will compute the sum of three integers
         */
        System.out.println("Sum of Three Integers: " + sum(a, b, c));

        /*
         * this will perform normal recursion that will multiply integers
         */
        System.out.println("Product of Two Integers: " + product(a, b));

        /*
         * this will perform normal recursion that will
         * identify if the given number is even or odd
         */
        System.out.println("Is " + a + " Even? " + isEven(a));
        System.out.println("Is " + a + " Odd? " + isOdd(a));
    }

    static int gcd(int a, int b) {
        if (b == 0)
            return a;
        else
            return gcd(b, a % b);
        /*
         * call gcd(5, 10)
         * recursive call 1, gcd(10, 5 % 10), which simplifies to gcd(10 5
         * recursive call 2: gcd(5, 10 % 5), which simplifies to gcd(5, 0)
         * base case reached since b == 0 so returns 5
         */
    }

    static int sum(int a, int b, int c) {
        if (a == 0) {
            return b + c;
        } else {
            return sum(a - 1, b + 1, c);
        }

        /*
         * calculating sum for a = 5, b = 10, and c = 15 as sum(5, 10, 15)
         * recursive call with sum(4, 11, 15)
         * recursive call with sum(3, 12, 15)
         * recursive call with sum(2, 13, 15)
         * recursive call with sum(1, 14, 15)
         * recursive call with sum(0, 15, 15)
         * base case reached (a == 0) so it returns a + b which is 30
         * returns 30, so Sum(5, 10, 15) is 30
         */
    }

    static int product(int a, int b) {
        if (b == 0) {
            return 0;
        } else {
            return a + product(a, b - 1);
        }

        /*
         * product(5, 10) = 5 + product(5, 9)
         * = 5 + (5 + product(5, 8))
         * = 5 + (5 + (5 + product(5, 7)))
         * = 5 + (5 + (5 + (5 + product(5, 6))))
         * = 5 + (5 + (5 + (5 + (5 + product(5, 5)))))
         * = 5 + (5 + (5 + (5 + (5 + (5 + product(5, 4))))))
         * = 5 + (5 + (5 + (5 + (5 + (5 + (5 + product(5, 3)))))))
         * = 5 + (5 + (5 + (5 + (5 + (5 + (5 + (5 + product(5, 2))))))))
         * = 5 + (5 + (5 + (5 + (5 + (5 + (5 + (5 + (5 + product(5, 1)))))))))
         * = 5 + (5 + (5 + (5 + (5 + (5 + (5 + (5 + (5 + (5 + product(5, 0))))))))))
         * = 5 + (5 + (5 + (5 + (5 + (5 + (5 + (5 + (5 + (5 + 0)))))))))
         * = 5 + (5 + (5 + (5 + (5 + (5 + (5 + (5 + (5 + 5))))))))
         * = 5 + (5 + (5 + (5 + (5 + (5 + (5 + (5 + 10)))))))
         * = 5 + (5 + (5 + (5 + (5 + (5 + (5 + 15))))))
         * = 5 + (5 + (5 + (5 + (5 + (5 + 20)))))
         * = 5 + (5 + (5 + (5 + (5 + 25))))
         * = 5 + (5 + (5 + (5 + 30)))
         * = 5 + (5 + (5 + 35))
         * = 5 + (5 + 40)
         * = 5 + 45
         * = 50
         */
    }

    static boolean isEven(int a) {
        if (a == 0) {
            return true;
        } else {
            return isOdd(a - 1);
        }

        /*
         * intial isEven(5) calls isOdd(4)
         * isOdd(4) calls isEven(3)
         * isEven(3) calls isOdd(2)
         * isOdd(2) calls isEven(1)
         * isEven(1) calls isOdd(0)
         * Base case reached: isOdd(0) returns true (0 is even).
         * Backtracking isEven(1) returns false (1 is not even; it's odd)
         * isOdd(2) returns true (2 is even)
         * isEven(3) returns false (3 is not even; it's odd)
         * isOdd(4) returns true (4 is even)
         * isEven(5) returns false (5 is not even; it's odd)
         */
    }

    static boolean isOdd(int a) {
        if (a == 0) {
            return false;
        } else {
            return isEven(a - 1);
        }
        /*
         * initial isOdd(5), calls isEven(4)
         * isEven(4) calls isOdd(3)
         * isOdd(3) calls isEven(2)
         * isEven(2) calls isOdd(1)
         * isOdd(1) calls isEven(0)
         * Base case reached: isEven(0) returns true (0 is even).
         * backtracking, isOdd(1) returns false (1 is not even; it's odd)
         * isEven(2) returns true (2 is even)
         * isOdd(3) returns false (3 is not even; it's odd)
         * isEven(4) returns true (4 is even)
         * isOdd(5) returns false (5 is not even; it's odd)
         */
    }

}