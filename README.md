<style type="text/css">
    body{
        font-family: "Arial", "Times New Roman", Times, serif;
        font-size: 12px;
    }
    td {  /*Table*/
        font-size: 8px;
    }
    h1.title {
        font-size: 38px;
        color: DarkRed;
    }
    h1 {
        font-size: 30px;
        color: White;
    }
    h2 {
        font-size: 22px;
        color: DarkBlue;
    }
    h3 {
        font-size: 18px;
        
        color: DarkBlue;
    }
    code.r{ /*Code block*/
        font-size: 12px;
    }
    pre { /*Code block - determines code spacing between lines*/
        font-size: 14px;
    }
</style>

# My CodeChef Programming Problems and Solution

```Markdown
The programming language used to solve the problems here in this Journey is Java.

Java is the first langauge I learned while was starting college. I had a lot of fun using it and solving problems with it.

Though I am using different other languages now for different purposes and school stuff's, I am back at using Java again.

Now, I am challenging myself to become much better using this language to become a better problem solver.
```

## Tables of Contents

1. [The Cheaper Cab](#the-cheaper-cab)
2. [Rating Improvement](#rating-improvement)
3. [Volume Control](#volume-control)
4. [Next](#next)

---

## The Cheaper Cab

```Markdown
Problem Code    : CABS
File Name       : CAB.java
Status          : Correct Answer
Submission ID   : 68012123
```

### Problem

Chef has to travel to another place. For this, he can avail any one of two cab services.

- The first cab service charges `X` rupees.
- The second cab service charges `Y` rupees.

Chef wants to spend the minimum amount of money. Which cab service should Chef take?

#### Input Format

- The first line will contain `T` - the number of test cases. Then the test cases follow.
- The first and only line of each test case contains two integers `X` and `Y` - the prices of first and second cab services respectively.

#### Output Format

For each test case, output FIRST if the first cab service is cheaper, output SECOND if the second cab service is cheaper, output ANY if both cab services have the same price.

You may print each character of FIRST, SECOND and ANY in uppercase or lowercase (for example, any, aNy, Any will be considered identical).

#### Constraints

>- 1 ≤ T ≤ 100
>- 1 ≤ X, Y ≤ 100

#### Sample 1

| Input     | Output  |
| :---------| :------ |
| 3         |         |
| 30 65     | FIRST   |
| 42 42     | ANY     |
| 90 50     | SECOND  |

#### Explanation

```Markdown
Test case 1: The first cab service is cheaper than the second cab service.

Test case 2: Both the cab services have the same price.

Test case 3: The second cab service is cheaper than the first cab service.
```

### My Solution

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

### Problem

Chef's current rating is `X`, and he wants to improve it. It is generally recommended that a person with rating `X` should solve problems whose difficulty lies in the range [X, X + 200][X, X + 200], i.e, problems whose difficulty is at least `X` and at most X+200X + 200.

You find out that Chef is currently solving problems with a difficulty of `Y`.

Is Chef following the recommended practice or not?

#### Input Format

For each test case, output on a new line YES if Chef is following the recommended practice style, and NO otherwise.

Each letter of the output may be printed in either lowercase or uppercase. For example, the strings YES, yEs, and Yes will be considered identical.

#### Constraints

>- 1 ≤ T ≤ 100
>- 1 ≤ X, Y ≤ 4000

#### Sample 1

| Input     | Output  |
| :---------| :------ |
| 5         |         |
| 1300 1500 | YES     |
| 1201 1402 | NO      |
| 300 4000  | NO      |
| 723 805   | YES     |
| 1330 512  | NO      |

#### Explanation

```Markdown
Test case 1: Chef's current rating is 1300, so he should solve problems with difficulty lying in [1300,1500][1300,1500]. Since 1500 lies in [1300,1500][1300,1500], Chef is doing his practice in a recommended way :)

Test case 2: Chef's current rating is 1201, so he should solve problems with difficulty lying in [1201,1401][1201,1401]. Since 1402 does not lie in [1201,1401][1201,1401], Chef is not doing his practice in a recommended way :(

Test case 3: Chef's current rating is 300, so he should solve problems with difficulty lying in [300,500][300,500]. Since 4000 does not lie in [300,500][300,500], Chef is not doing his practice in a recommended way :(

Test case 4: Chef's current rating is 723, so he should solve problems with difficulty lying in [723,923][723,923]. Since 805 lies in [723,923][723,923], Chef is doing his practice in a recommended way :)

Test case 5: Chef's current rating is 1330, so he should solve problems with difficulty lying in [1330,1530][1330,1530]. Since 512 does not lie in [1330,1530][1330,1530], Chef is not doing his practice in a recommended way :(
```

### My Solution

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

<br>

---

<br>

## Volume Control

```Markdown
Contest Code    : START32
Problem Code    : VOLCONTROL
File Name       : VOLCONTROL.java
Status          : Correct Answer
Submission ID   : 68019500
```

### Problem

Chef is watching TV. The current volume of the TV is `X`. Pressing the volume up button of the TV remote increases the volume by 1 while pressing the volume down button decreases the volume by 1. Chef wants to change the volume from `X` to `Y`. Find the minimum number of button presses required to do so.

#### Input Format

- The first line contains a single integer TT - the number of test cases. Then the test cases follow.

- The first and only line of each test case contains two integers XX and YY - the initial volume and final volume of the TV.

#### Output Format

For each test case, output the minimum number of times Chef has to press a button to change the volume from XX to YY.

#### Constraints

>- 1 ≤ T ≤ 100
>- 1 ≤ X, Y ≤ 100

#### Sample 1

| Input | Output  |
| :-----| :------ |
| 2     |         |
| 50 54 | 4       |
| 12 10 | 2       |

#### Explanation

```Markdown
Test Case 1: Chef can press the volume up button 44 times to increase the volume from 5050 to 5454.

Test Case 2: Chef can press the volume down button 22 times to decrease the volume from 1212 to 1010.
```

### My Solution

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

# `Thank You For Reading This File`
