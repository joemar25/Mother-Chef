# Numerical Analysis

1. [Joemar J. Cardiño](https://github.com/joemar25)
2. [Jan Lance Borrero](https://github.com/JanRoShin)
3. [Engelrhand Matthew Zaragoza](https://github.com/MatVFX23)
4. [Kyle Arteal Roque](https://github.com/koyaaakeys)

Table of Contents:

1. [Solving With One Variable](#solving-with-one-variable)
   - [Bisection Method](#bisection-method)
   - [Fixed Point Method](#fixed-point-method)
   - [Newton's Method](#newtons-method)
   - [Secant Method](#secant-method)
2. [Matrix](#matrix)
   - [LU Factorization](#lu-factorization)

Note:

1. We did not perform any academic dishonesty, such as cheating and plagiarism, for this subject as a rule for creating this finals project.
2. N variable in displaying the output for bisection, fix-point, etc., is the n-number of iterations.
3. **clc; clear;** is used so that the command window and workspace are cleared, respectively. This helps in removing any previous variables or outputs that might interfere with the current Octave session.

## Solving with one variable

The root-finding problem refers to finding a root or solution of an equation of the form f(x) = 0, where f(x) is a given function. A root of this equation is also called a zero of the function f.

### Bisection Method

In the Bisection Method, an initial interval is chosen such that the function values at the endpoints have opposite signs. The interval is then repeatedly halved, and the half containing the root is selected. This process continues until a desired level of accuracy is achieved.

Pseudocode:

```octave
Step 1 Set i = 1
       FA = f(a)
Step 2 While i <= N do Steps 3-6.
     Step 3 Set p = a + (b - a) / 2; (computer p_i.)
     Step 4 If FP = 0 or (b - a) / 2 < TOL then
            OUTPUT (p); (Procedure completed successfully.)
            STOP.
     Step 5 Set i = i + 1.
     Step 6 If FA * FP > 0 then set a = p; (Computer a_i, bi.)
                                    FA = FP
                            else set b = p. (FA is unchanged.)
Step 7 Output ('Method failed after N iterations, N, =',N_o);
       (The procedure was unsuccessful.)
       STOP.
```

Instruction Problem and Solution:

1. Create an Octave program that follows the given algorithm for the bisection method. The output must display, **for each iteration**, **the intervals being used**, **the computed midpoints**, **the function values at the endpoints of the intervals**, and **the function values at the obtained midpoints**.

Our Code:

This is the main function, where we designed for input of the equations, putting required variables, and calling the method that will execute the code implementation of the pseducode above. Note that clc, and clear is used here because we want the users to just plug and play the code without worrying about the memory and the console view (this can be removed if desired).

```octave
function main()

    clc; clear;

    % Main Area for Input
    f = @(x) x^3 + 4 * x^2 - 10;  % equation

    a = 1;                        % interval a
    b = 2;                        % interval b
    TOL = 10^-4;
    N = 13;

    % Function calling
    bisection_method(f, a, b, TOL, N);

end
```

This is the function that we implemented based on the pseducode above. This has the modifications that is necessary to solve the activity problem. We remove the STOP or equivalent to break in octave to follow the desired output. We also added success variable as alternative for the STOP/break in the pseudocode to follow the desired output, that will do the trick to be triggered if the condition in step 4 is followed.

```octave
function bisection_method(f, a, b, TOL, N)

    success = false;
    fprintf('bisection method\n\n%-10s %-10s %-10s %-10s %-10s\n', 'n', 'a', 'b', 'p', 'f(p)')

    % Step 1
    i = 1;
    FA = f(a);

    % Step 2
    while i <= N

        % Print the values of n, An, Bn, Pn, and f(Pn)
        p = a + (b - a) / 2;
        FP = f(p);
        fprintf('%-10d %-10f %-10f %-10f %-10f\n', i, a, b, p, FP);

        % Step 3
        p = a + (b - a) / 2;
        FP = f(p);

        % Step 4
        if FP == 0 || abs(b - a) / 2 < TOL
            fprintf('\nProcedure completed successfully. Root: %f\n', p);

            success = true;
            return
        end

        % Step 5
        i = i + 1;

        % Step 6
        if FA * FP > 0
            a = p;
            FA = FP;
        else
            b = p;
        end

    end

    % Step 7 - if not success
    if ~success
        fprintf('\nMethod failed after %d iterations\n', N);
        fprintf('The procedure was unsuccessful.\n');
    end
end
```

Note: The functions above is used to solve #2 below, same structure would be used for each code but the equations and other paremeters would be changed.

2. Construct separate codes that use your program for the bisection method to solve the following problems for the given intervals.

   a. Find the largest root of **f(x) = (x^6) − x − 1 = 0** accurate to within **10^−5** for the interval **[1, 2]**. Discuss your observations regarding the convergence of the approximations.

   b. Solve the equation **f(x) = (e^x) − (x^3) − 5** within the interval **[−2, −1]** accurate to at least within **10^−4**.

   c. What will happen if the bisection method is used with the function **f(x) = 1 / x − 2** and the interval is **[3, 7]**? You may try different values of tolerance if possible.

Note: Codes for these problems are available in the 1_Bisection_Method file, each marked as 'a.m', 'b.m', and 'c.m'.

### Fixed Point Method

The Fixed-Point Method involves choosing an initial approximation and generating a sequence by applying the function to the previous approximation. If the sequence converges to a fixed point, which is a solution to the equation f(x) = x, then the method is successful.

Pseudocode:

```octave

```

Code Implementation:

### Note for Bisection and Fixed Point Method

It is important to note that the Fixed-Point Theorem provides conditions for the convergence of the Fixed-Point Method. The theorem states that if the function satisfies certain conditions, such as being continuous and having a derivative with a magnitude less than or equal to a constant, then the sequence generated by the method will converge to the unique fixed point.

### Newton's Method

Pseudocode:

```octave
input p, TOL, N
Step 1
Set i = 1
step 2
while i <= N do step 3-6
  step 3 set p=P - f(P)/f'(P). (compute p)
  step 4 if |p-P| < TOL then
    OUTPUT (p); (The procedure was successful)
    STOP.
  Step 5. Set i = i + 1
  Step 6 Set P = p (Update P)
Step 7 OUTPUT ('The method failed after N iterations, N=',N);
(The Procedure was unsuccessful)
STOP
```

Code Implementation:

### Secant Method

Pseudocode:

```octave
input p sub 0, p sub 1, TOL, N
Step 1
  Set i = 2
      q sub 0 = f(p sub 0)
      q sub 1 = f(p sub 1)
step 2
  while i <= N do step 3-6
    step 3 set p = P sub 1 - q sub 1 (p sub 1 - p sub 0) / (q sub 1 - q sub 0). (compute p sub i)
    step 4 if |p-P| < TOL then
      OUTPUT (p); (The procedure was successful)
      STOP.
    Step 5. Set i = i + 1
    Step 6 Set p sub 0 = p sub 1 (Update p sub 0, q sub 0, p sub 1, q sub 1)
              q sub 0 = q sub 1
              p sub 1 = p
              q sub 1 = f(p)
Step 7 OUTPUT ('The method failed after N iterations, N=',N);
       sThe Procedure was unsuccessful)
       STOP
```

Code Implementation:

## Matrix

### LU Factorization

To factor the `n x n` matrix A = a[i][j] into the product of the lower-triangular matrix L = l[i][j] and the upper-triangular matrix U = u[i][j]; that is, A = LU, where the main diagonal of either L or U consists of all ones:

Pseudocode:

```octave
INPUT dimension n; the entries a[i][j], 1 ≤ i, j ≤ n of A; the diagonal l[1][1]== ... = 1 of L or the diagonal u[n][m] = 1 of U.

OUTPUT the entries l[i][j], 1 ≤ j ≤ i, 1 ≤ i ≤ n of L and the entries, u[i][j], i ≤ j ≤ n, 1 ≤ i ≤ n of U.

Step 1
Select l[1][1] and u satisfying an
If 10 then OUTPUT ('Factorization impossible');
  STOP.

Step 2 For j = 2,...,n set u[1][j] = a[1][j] / l[1][1] (First row of U.)
l[j][1] = a[j][1] / u[1][1] (First column of L.)

Step 3 For i = 2,...,n-1 do Steps 4 and 5.

  Step 4 Select l[i][i], and u[i][i]; satisfying l[i][i] u[i][i] = a[¡][¡] = summation from i - 1 where k = 1 the function is l[i][k]u[k][i].
    If lu= 0 then OUTPUT ('Factorization impossible');
  STOP.

  Step 5 For j = i + 1, ..., n
    set u[i][j] = 1/l[i][i] [a[i][j] - summation i - 1 and k = 1 l[i][k] u[k][j]]; (ith row of U.)

      i[i][i] = 1/u[i][i] [a[j][i] - summation i - 1 and k = 1 l[j][k] u[k][i]]; (ith column of L.)

Step 6 Select I[n][m] and u[n][m] satisfying l[n][m] u[n][n] = a[n][n] - summation n - 1, k = 1 l[n][k] u[k][n].
NOTE: If l[n][m] u[n][n] = 0, then A = LU but A singular.

Step 7 OUTPUT (l[i][j] for j = 1 and i = 1, ...., n);
       OUTPUT (u[i][j] for j = i and i = 1, ...., n);
```

Code Implementation:

Note: This algo, is only for getting the Lower and Upper Matrix, no function for the final calculation.

## References

https://www.testingdocs.com/octave-clear-command/
https://docs.octave.org/v4.2.1/Cursor-Motion.html
