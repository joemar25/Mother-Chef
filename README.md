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
4. [Test1](#test1)
5. [Template](#template)

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
import java.util.*;
import java.io.*;

class CABS {
    static void check(int first, int second) {
        if (first < second)
            System.out.println("FIRST");
        else if (first > second)
            System.out.println("SECOND");
        else
            System.out.println("ANY");
    }

    public static void main(String[] args) throws Exception {
        InputStream inputStream = System.in;
        Scanner in = new Scanner(inputStream);
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

- The first and only line of each test case contains two integers XX and YY - the initial volume and final volume of the TV.

<h3> Output Format </h3>

For each test case, output the minimum number of times Chef has to press a button to change the volume from XX to YY.

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

## Test1

```Markdown
Contest Code    : TITLE00
Problem Code    : TITLE00
File Name       : TITLE00.java
Status          : Correct Answer
Submission ID   : 00
```

<h3> Problem </h3>

Text.

<h3> Input Format </h3>

- Text.

<h3> Output Format </h3>

Text.

<h3> Constraints </h3>

- 1 ≤ T ≤ 100
- 1 ≤ X, Y ≤ 100

<h3> Sample </h3>

| Input | Output  |
| :-----| :------ |
| 0     |         |
| 0 0   | 0       |
| 0 0   | 0       |

<h3> Explanation </h3>

```Markdown
Test Case 1: Test1.
```

<h3> My Solution </h3>

```Java
System.out.println("Temp");
```

## Template

```Markdown
Contest Code    : TITLE00
Problem Code    : TITLE00
File Name       : TITLE00.java
Status          : Correct Answer
Submission ID   : 00
```

<h3> Problem </h3>

Text.

<h3> Input Format </h3>

- Text.

<h3> Output Format </h3>

Text.

<h3> Constraints </h3>

- 1 ≤ T ≤ 100
- 1 ≤ X, Y ≤ 100

<h3> Sample </h3>

| Input | Output  |
| :-----| :------ |
| 0     |         |
| 0 0   | 0       |
| 0 0   | 0       |

<h3> Explanation </h3>

```Markdown
Test Case 1: Test1.
```

<h3> My Solution </h3>

```Java
System.out.println("Temp");
```

---

# ` "Thank You For Reading This File" `














Fitness
Problem Code:
FIT
Contest Code:
JUNE222

ID: 68026668

Problem
Chef wants to become fit for which he decided to walk to the office and return home by walking. It is known that Chef's office is XX km away from his home.

If his office is open on 55 days in a week, find the number of kilometers Chef travels through office trips in a week.

Input Format
First line will contain TT, number of test cases. Then the test cases follow.
Each test case contains of a single line consisting of single integer XX.
Output Format
For each test case, output the number of kilometers Chef travels through office trips in a week.

Constraints
1 \leq T \leq 101≤T≤10
1 \leq X \leq 101≤X≤10
Sample 1:
Input
Output
4
1
3
7
10
10
30
70
100
Explanation:
Test case 11: The office is 11 km away. Thus, to go to the office and come back home, Chef has to walk 22 kms in a day. In a week with 55 working days, Chef has to travel 2\cdot 5 = 102⋅5=10 kms in total.

Test case 22: The office is 33 kms away. Thus, to go to the office and come back home, Chef has to walk 66 kms in a day. In a week with 55 working days, Chef has to travel 6\cdot 5 = 306⋅5=30 kms in total.

Test case 33: The office is 77 kms away. Thus, to go to the office and come back home, Chef has to walk 1414 kms in a day. In a week with 55 working days, Chef has to travel 14\cdot 5 = 7014⋅5=70 kms in total.

Test case 44: The office is 1010 kms away. Thus, to go to the office and come back home, Chef has to walk 2020 kms in a day. In a week with 55 working days, Chef has to travel 20\cdot 5 = 10020⋅5=100 kms in total.



ATM
Problem Code:
HS08TEST

ID: 68027028

Problem
Pooja would like to withdraw X $US from an ATM. The cash machine will only accept the transaction if X is a multiple of 5, and Pooja's account balance has enough cash to perform the withdrawal transaction (including bank charges). For each successful withdrawal the bank charges 0.50 $US.

Calculate Pooja's account balance after an attempted transaction.

Input
Positive integer 0 < X <= 2000 - the amount of cash which Pooja wishes to withdraw.

Nonnegative number 0<= Y <= 2000 with two digits of precision - Pooja's initial account balance.

Output
Output the account balance after the attempted transaction, given as a number with two digits of precision. If there is not enough money in the account to complete the transaction, output the current bank balance.

Example - Successful Transaction
Input:
30 120.00

Output:
89.50
Example - Incorrect Withdrawal Amount (not multiple of 5)
Input:
42 120.00

Output:
120.00
Example - Insufficient Funds
Input:
300 120.00

Output:
120.00


Best of Two
Problem Code:
BESTOFTWO
Contest Code:
START45

ID:
68027384

Problem
Chef took an examination two times. In the first attempt, he scored XX marks while in the second attempt he scored YY marks. According to the rules of the examination, the best score out of the two attempts will be considered as the final score.

Determine the final score of the Chef.

Input Format
The first line contains a single integer TT — the number of test cases. Then the test cases follow.
The first line of each test case contains two integers XX and YY — the marks scored by Chef in the first attempt and second attempt respectively.
Output Format
For each test case, output the final score of Chef in the examination.

Constraints
1 \leq T \leq 10001≤T≤1000
0 \le X, Y \le 1000≤X,Y≤100
Sample 1:
Input
Output
4
40 60
67 55
50 50
1 100
60
67
50
100
Explanation:
Test Case 1: The best score out of the two attempts is 6060.

Test Case 2: The best score out of the two attempts is 6767.

Test Case 3: The best score out of the two attempts is 5050.



Ezio and Guards
Problem Code:
MANIPULATE
Contest Code:
APRIL221
ID: 68027668

Problem
Ezio can manipulate at most XX number of guards with the apple of eden.

Given that there are YY number of guards, predict if he can safely manipulate all of them.

Input Format
First line will contain TT, number of test cases. Then the test cases follow.
Each test case contains of a single line of input, two integers XX and YY.
Output Format
For each test case, print \texttt{YES}YES if it is possible for Ezio to manipulate all the guards. Otherwise, print \texttt{NO}NO.

You may print each character of the string in uppercase or lowercase (for example, the strings \texttt{YeS}YeS, \texttt{yEs}yEs, \texttt{yes}yes and \texttt{YES}YES will all be treated as identical).

Constraints
1 \leq T \leq 1001≤T≤100
1 \leq X, Y \leq 1001≤X,Y≤100
Sample 1:
Input
Output
3
5 7
6 6
9 1
NO
YES
YES
Explanation:
Test Case 11: Ezio can manipulate at most 55 guards. Since there are 77 guards, he cannot manipulate all of them.

Test Case 22: Ezio can manipulate at most 66 guards. Since there are 66 guards, he can manipulate all of them.

Test Case 33: Ezio can manipulate at most 99 guards. Since there is only 11 guard, he can manipulate the guard.


