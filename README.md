<h1> My CodeChef Programming Problems and Solution </h3>

```Markdown
The programming language used to solve the problems here in this Journey is Java.

Java is the first langauge I learned while was starting college. I had a lot of fun using it and solving problems with it.

Though I am using different other languages now for different purposes and school stuff's, I am back at using Java again.

Now, I am challenging myself to become much better using this language to become a better problem solver.
```

<h2> Tables of Contents </h2>

1. [The Cheaper Cab](#the-cheaper-cab)
2. [Rating Improvement](#rating-improvement)
3. [Volume Control](#volume-control)
4. [Fitness](#fitness)
5. [ATM](#atm)
6. [Best of Two](#best-of-two)
7. [Ezio and Guards](#ezio-and-guards)
8. [Pass or Fail](#pass-or-fail)
9. [Credit Score](#credit-score)
10. [Enormous Input Test](#enormous-input-test)
11. [New1](#new1)
12. [New2](#new2)
13. [New3](#new3)

---

## The Cheaper Cab

```Markdown
Problem Code    : CABS
File Name       : CABS.java
Status          : Correct Answer
Submission ID   : 68012123
```

</h3> Problem </h3>

Chef has to travel to another place. For this, he can avail any one of two cab services.

- The first cab service charges `X` rupees.
- The second cab service charges `Y` rupees.

Chef wants to spend the minimum amount of money. Which cab service should Chef take?

<h3> Input Format </h3>

- The first line will contain `T` - the number of test cases. Then the test cases follow.
- The first and only line of each test case contains two integers `X` and `Y` - the prices of first and second cab services respectively.

<h3> Output Format </h3>

For each test case, output FIRST if the first cab service is cheaper, output SECOND if the second cab service is cheaper, output ANY if both cab services have the same price.

You may print each character of FIRST, SECOND and ANY in uppercase or lowercase (for example, any, aNy, Any will be considered identical).

<h3> Constraints </h3>

- 1 ≤ T ≤ 100
- 1 ≤ X, Y ≤ 100

<h3> Sample </h3>

| Input     | Output  |
| :---------| :------ |
| 3         |         |
| 30 65     | FIRST   |
| 42 42     | ANY     |
| 90 50     | SECOND  |

<h3> Explanation </h3>

```Markdown
Test case 1: The first cab service is cheaper than the second cab service.

Test case 2: Both the cab services have the same price.

Test case 3: The second cab service is cheaper than the first cab service.
```

<h3> My Solution </h3>

```Java
import java.util.Scanner;

class CABS {

    static void check(int x, int y) {
        if (x == y)
            System.out.println("ANY");
        else if (x < y)
            System.out.println("FIRST");
        else
            System.out.println("SECOND");
    }

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int t = in.nextInt();
        while(t > 0) {
            int x = in.nextInt();
            int y = in.nextInt();
            check(x, y);
            t--;
        }
        in.close();
    }
}
```

---

## Rating Improvement

```Markdown
Contest Code    : COOK142
Problem Code    : ADVANCE
File Name       : ADVANCE.java
Status          : Correct Answer
Submission ID   : 68015253
```

<h3> Problem </h3>

Chef's current rating is `X`, and he wants to improve it. It is generally recommended that a person with rating `X` should solve problems whose difficulty lies in the range [X, X + 200][X, X + 200], i.e, problems whose difficulty is at least `X` and at most X+200X + 200.

You find out that Chef is currently solving problems with a difficulty of `Y`.

Is Chef following the recommended practice or not?

<h3> Input Format </h3>

For each test case, output on a new line YES if Chef is following the recommended practice style, and NO otherwise.

Each letter of the output may be printed in either lowercase or uppercase. For example, the strings YES, yEs, and Yes will be considered identical.

<h3> Constraints </h3>

- 1 ≤ T ≤ 100
- 1 ≤ X, Y ≤ 4000

<h3> Sample </h3>

| Input     | Output  |
| :---------| :------ |
| 5         |         |
| 1300 1500 | YES     |
| 1201 1402 | NO      |
| 300 4000  | NO      |
| 723 805   | YES     |
| 1330 512  | NO      |

<h3> Explanation </h3>

```Markdown
Test case 1: Chef's current rating is 1300, so he should solve problems with difficulty lying in [1300,1500][1300,1500]. Since 1500 lies in [1300,1500][1300,1500], Chef is doing his practice in a recommended way :)

Test case 2: Chef's current rating is 1201, so he should solve problems with difficulty lying in [1201,1401][1201,1401]. Since 1402 does not lie in [1201,1401][1201,1401], Chef is not doing his practice in a recommended way :(

Test case 3: Chef's current rating is 300, so he should solve problems with difficulty lying in [300,500][300,500]. Since 4000 does not lie in [300,500][300,500], Chef is not doing his practice in a recommended way :(

Test case 4: Chef's current rating is 723, so he should solve problems with difficulty lying in [723,923][723,923]. Since 805 lies in [723,923][723,923], Chef is doing his practice in a recommended way :)

Test case 5: Chef's current rating is 1330, so he should solve problems with difficulty lying in [1330,1530][1330,1530]. Since 512 does not lie in [1330,1530][1330,1530], Chef is not doing his practice in a recommended way :(
```

<h3> My Solution </h3>

```Java
import java.util.Scanner;

class ADVANCE {
    static void solve(int x, int y) {
        if (y >= x && y <= x + 200)
            System.out.println("YES");
        else
            System.out.println("NO");
    }

    public static void main(String[] args) throws Exception {
        Scanner in = new Scanner(System.in);
        int x, y, t = in.nextInt();
        while (t > 0) {
            x = in.nextInt();
            y = in.nextInt();
            solve(x, y);
            t--;
        }
        in.close();
    }
}
```

---

## Volume Control

```Markdown
Contest Code    : START32
Problem Code    : VOLCONTROL
File Name       : VOLCONTROL.java
Status          : Correct Answer
Submission ID   : 68019500
```

<h3> Problem </h3>

Chef is watching TV. The current volume of the TV is `X`. Pressing the volume up button of the TV remote increases the volume by 1 while pressing the volume down button decreases the volume by 1. Chef wants to change the volume from `X` to `Y`. Find the minimum number of button presses required to do so.

<h3> Input Format </h3>

- The first line contains a single integer TT - the number of test cases. Then the test cases follow.

- The first and only line of each test case contains two integers `X` and `Y` - the initial volume and final volume of the TV.

<h3> Output Format </h3>

For each test case, output the minimum number of times Chef has to press a button to change the volume from `X` to `Y`.

<h3> Constraints </h3>

- 1 ≤ T ≤ 100
- 1 ≤ X, Y ≤ 100

<h3> Sample </h3>

| Input | Output  |
| :-----| :------ |
| 2     |         |
| 50 54 | 4       |
| 12 10 | 2       |

<h3> Explanation </h3>

```Markdown
Test Case 1: Chef can press the volume up button 44 times to increase the volume from 5050 to 5454.

Test Case 2: Chef can press the volume down button 22 times to decrease the volume from 1212 to 1010.
```

<h3> My Solution </h3>

```Java
import java.util.Scanner;

class VOLCONTROL {
    static void check(int x, int y) {
        if (x > y)
            System.out.println(x - y);
        else
            System.out.println(y - x);
    }

    public static void main(String[] args) throws java.lang.Exception {
        Scanner in = new Scanner(System.in);
        int t = in.nextInt();
        while (t > 0) {
            int x = in.nextInt();
            int y = in.nextInt();
            check(x, y);
            t--;
        }
        in.close();
    }
}
```

## Fitness

```Markdown
Contest Code    : JUNE222
Problem Code    : FIT
File Name       : FIT.java
Status          : Correct Answer
Submission ID   : 68026668
```

<h3> Problem </h3>

Chef wants to become fit for which he decided to walk to the office and return home by walking. It is known that Chef's office is `X` km away from his home.

If his office is open on 55 days in a week, find the number of kilometers Chef travels through office trips in a week.

<h3> Input Format </h3>

- First line will contain `T`, number of test cases. Then the test cases follow.
- Each test case contains of a single line consisting of single integer `X`.

<h3> Output Format </h3>

For each test case, output the number of kilometers Chef travels through office trips in a week.

<h3> Constraints </h3>

- 1 ≤ T ≤ 10
- 1 ≤ X ≤ 10

<h3> Sample </h3>

| Input | Output  |
| :-----| :------ |
| 4     |         |
| 1     | 10      |
| 3     | 30      |
| 7     | 70      |
| 10    | 100     |

<h3> Explanation </h3>

```Markdown
Test case 1: The office is 1 km away. Thus, to go to the office and come back home, Chef has to walk 2 kms in a day. In a week with 5 working days, Chef has to travel 2⋅5 = 102⋅5=10 kms in total.

Test case 2: The office is 3 kms away. Thus, to go to the office and come back home, Chef has to walk 6 kms in a day. In a week with 5 working days, Chef has to travel 6⋅5 = 306⋅5=30 kms in total.

Test case 3: The office is 7 kms away. Thus, to go to the office and come back home, Chef has to walk 14 kms in a day. In a week with 5 working days, Chef has to travel 14⋅5 = 7014⋅5=70 kms in total.

Test case 4: The office is 10 kms away. Thus, to go to the office and come back home, Chef has to walk 20 kms in a day. In a week with 5 working days, Chef has to travel 20⋅5 = 10020⋅5=100 kms in total.
```

<h3> My Solution </h3>

```Java
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
```

## ATM

```Markdown
Problem Code    : HS08TEST
File Name       : HS08TEST.java
Status          : Correct Answer
Submission ID   : 68027028
```

<h3> Problem </h3>

Pooja would like to withdraw X $US from an ATM. The cash machine will only accept the transaction if X is a multiple of 5, and Pooja's account balance has enough cash to perform the withdrawal transaction (including bank charges). For each successful withdrawal the bank charges 0.50 $US.

Calculate Pooja's account balance after an attempted transaction.

<h3> Input Format </h3>

- Positive integer 0 < X <= 2000 - the amount of cash which Pooja wishes to withdraw.

- Nonnegative number 0<= Y <= 2000 with two digits of precision - Pooja's initial account balance.

<h3> Output Format </h3>

Output the account balance after the attempted transaction, given as a number with two digits of precision. If there is not enough money in the account to complete the transaction, output the current bank balance.

<h3> Example - Successful Transaction </h3>

```
Input:
30 120.00

Output:
89.50
```

<h3> Example - Incorrect Withdrawal Amount (not multiple of 5) </h3>

```
Input:
42 120.00

Output:
120.00
```

<h3> Example - Insufficient Funds </h3>

```
Input:
300 120.00

Output:
120.00
```

<h3> My Solution </h3>

```Java
import java.util.Scanner;
import java.io.InputStream;

class HS08TEST {
    
    public static void main(String[] args) throws Exception {
        InputStream inputStream = System.in;
        Scanner in = new Scanner(inputStream);
        int x = in.nextInt();
        float y = in.nextFloat();
        if (x % 5 == 0 && y >= x + 0.5f)
            System.out.println(y - x - 0.5f);
        else
            System.out.println(y);
        in.close();
    }

}
```

---

## Best of Two

```Markdown
Contest Code    : START45
Problem Code    : BESTOFTWO
File Name       : BESTOFTWO.java
Status          : Correct Answer
Submission ID   : 68027384
```

<h3> Problem </h3>

Chef took an examination two times. In the first attempt, he scored `X` marks while in the second attempt he scored `Y` marks. According to the rules of the examination, the best score out of the two attempts will be considered as the final score. Determine the final score of the Chef.

<h3> Input Format </h3>

- The first line contains a single integer TT — the number of test cases. Then the test cases follow.

- The first line of each test case contains two integers `X` and `Y` — the marks scored by Chef in the first attempt and second attempt respectively.

<h3> Output Format </h3>

For each test case, output the final score of Chef in the examination.

<h3> Constraints </h3>

- 1 ≤ T ≤ 1000
- 1 ≤ X, Y ≤ 1000

<h3> Sample </h3>

| Input | Output  |
| :-----| :------ |
| 4     |         |
| 40 60 | 60      |
| 67 55 | 67      |
| 50 50 | 50      |
| 1 100 | 100     |

<h3> Explanation </h3>

```Markdown
Test Case 1: The best score out of the two attempts is 60.

Test Case 2: The best score out of the two attempts is 67.

Test Case 3: The best score out of the two attempts is 50.
```

<h3> My Solution </h3>

```Java
import java.util.Scanner;

class Codechef {
    static void check(int first, int second) {
        if (first > second)
            System.out.println(first);
        else
            System.out.println(second);
    }

    public static void main(String[] args) throws Exception {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        for (int i = 0; i < n; i++) {
            int first = in.nextInt();
            int second = in.nextInt();
            check(first, second);
        }
        in.close();
    }
}
```

## Ezio and Guards

```Markdown
Contest Code    : APRIL221
Problem Code    : MANIPULATE
File Name       : MANIPULATE.java
Status          : Correct Answer
Submission ID   : 68030424
```

<h3> Problem </h3>

Ezio can manipulate at most `X` number of guards with the apple of eden.

Given that there are `Y` number of guards, predict if he can safely manipulate all of them.

<h3> Input Format </h3>

- First line will contain TT, number of test cases. Then the test cases follow.

- Each test case contains of a single line of input, two integers `X` and `Y`.

<h3> Output Format </h3>

For each test case, print YES if it is possible for Ezio to manipulate all the guards. Otherwise, print NO.

You may print each character of the string in uppercase or lowercase (for example, the strings YeS, yEs, yes and YES will all be treated as identical).

<h3> Constraints </h3>

- 1 ≤ T ≤ 100
- 1 ≤ X, Y ≤ 100

<h3> Sample </h3>

| Input | Output  |
| :-----| :------ |
| 3     |         |
| 5 7   | NO      |
| 6 6   | YES     |
| 9 1   | YES     |

<h3> Explanation </h3>

```Markdown
Test Case 1: Ezio can manipulate at most 5 guards. Since there are 7 guards, he cannot manipulate all of them.

Test Case 2: Ezio can manipulate at most 6 guards. Since there are 6 guards, he can manipulate all of them.

Test Case 3: Ezio can manipulate at most 9 guards. Since there is only 1 guard, he can manipulate the guard.
```

<h3> My Solution </h3>

```Java
import java.util.Scanner;

class Codechef {
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
```

## Pass Or Fail

```Markdown
Contest Code    : START16
Problem Code    : PASSORFAIL
File Name       : PASSORFAIL.java
Status          : Correct Answer
Submission ID   : 68260282
```

<h3> Problem </h3>

Chef is struggling to pass a certain college course.

The test has a total of `N` question, each question carries `3` marks for a correct answer and `-1` for an incorrect answer. Chef is a risk-averse person so he decided to attempt all the questions. It is known that Chef got `X` questions correct and the rest of them incorrect. For Chef to pass the course he must score at least `P` marks.

Will Chef be able to pass the exam or not?

<h3> Input Format </h3>

- First line will contain `T`, number of testcases. Then the testcases follow.

- Each testcase contains of a single line of input, three integers `N`, `X`, `P`.

<h3> Output Format </h3>

For each test case output "PASS" if Chef passes the exam and "FAIL" if Chef fails the exam.

You may print each character of the string in uppercase or lowercase (for example, the strings "pAas", "pass", "Pass" and "PASS" will all be treated as identical).

<h3> Constraints </h3>

- 1 ≤ T ≤ 1000
- 1 ≤ N ≤ 100
- 0 ≤ X ≤ N
- 0 ≤ P ≤ 3 ⋅ N

<h3> Sample </h3>

| Input | Output    |
| :------ | :------ |
| 3       |         |
| 5 2 3   | PASS    |
| 5 2 4   | FAIL    |
| 4 0 0   | FAIL    |

<h3> Explanation </h3>

```Markdown
Test Case 1: Chef gets `2` questions correct giving him `6` marks and since he got `3` questions incorrect so he faces a penalty of `-3`. So Chef's final score is `3` and the passing marks are also `3`, so he passes the exam :)

Test Case 2: Chef's total marks are `3` and since the passing marks are `4`, Chef fails the test :(

Test Case 3: Chef got all the problems wrong and thus his total score is `-4`. Since the passing marks are `0`, Chef fails the exam :(
```

<h3> My Solution </h3>

```Java
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
```

## Credit Score

```Markdown
Contest Code    : LTIME106
Problem Code    : CREDSCORE
File Name       : CREDSCORE.java
Status          : Correct Answer
Submission ID   : 68424065
```

<h3> Problem </h3>

To access CRED programs, one needs to have a credit score of `750` or more.
Given that the present credit score is `X`, determine if one can access CRED programs or not.

If it is possible to access CRED programs, output `YES`, otherwise output `NO`.

<h3> Input Format </h3>

- The first and only line of input contains a single integer `X`, the credit score.

<h3> Output Format </h3>

Print `YES` if it is possible to access CRED programs. Otherwise, print `NO`.

You may print each character of the string in uppercase or lowercase (for example, the strings `YeS`, `yEs`, `yes` and `YES` will all be treated as identical).

<h3> Constraints </h3>

- 0 ≤ X ≤ 1000

<h3> Subtasks </h3>

- Subtask 1 (100 points): Original constraints.

<h3> Sample 1 </h3>

| Input   | Output  |
| :------ | :------ |
| 821     | YES     |

<h3> Explanation </h3>

```Markdown
Since 823 ≥ 750, it is possible to access CRED programs.
```

<h3> Sample 2 </h3>

| Input   | Output  |
| :------ | :------ |
| 251     | NO      |

<h3> Explanation </h3>

```Markdown
Since 251 < 750, it is not possible to access CRED programs.
```

<h3> My Solution </h3>

```Java
import java.util.Scanner;

class CREDSCORE {

    static void check(int x) {
        if (0 <= x && x <= 1000 && x >= 750)
            System.out.println("YES");
        else
            System.out.println("NO");
    }

    public static void main(String[] args) throws Exception {
        Scanner in = new Scanner(System.in);
        int x = in.nextInt();
        check(x);
        in.close();
    }
}
```

## Enormous Input Test

Problem Code:
INTEST

Problem Code:

```Markdown
Problem Code    : INTEST
File Name       : INTEST.java
Status          : Correct Answer
Submission ID   : 68424297
```

<h3> Problem </h3>

The purpose of this problem is to verify whether the method you are using to read input data is sufficiently fast to handle problems branded with the enormous Input/Output warning. You are expected to be able to process at least 2.5MB of input data per second at runtime.

<h3> Input </h3>

The input begins with two positive integers n k (n, k<=107). The next n lines of input contain one positive integer ti, not greater than 109, each.

<h3> Output </h3>

Write a single integer to output, denoting how many integers ti are divisible by k.

<h3> Sample 1 </h3>

| Input      | Output  |
| :--------- | :------ |
| 7 3        | 4       |
| 1          |         |
| 51         |         |
| 966369     |         |
| 7          |         |
| 9          |         |
| 999996     |         |
| 11         |         |

<h3> Explanation </h3>

```Markdown
The integers divisible by 33 are 51, 966369, 9 and 999996. Thus, there are 4 integers in total.
```

<h3> My Solution </h3>

```Java
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
```

---

# ` "Thank You For Reading This File" `