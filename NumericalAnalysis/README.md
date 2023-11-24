# Numerical analysis

Table of Contents:

1. a -
2. b -

## Solving with one variable

### Fixed Point Method

### Bisection Method

### Newton's Method

### Secant Method

```algo
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

## Matrix

### LU Factorization

To factor the `n x n` matrix A = a[i][j] into the product of the lower-triangular matrix L = l[i][j] and the upper-triangular matrix U = u[i][j]; that is, A = LU, where the main diagonal of either L or U consists of all ones:

```algo
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

Note: This algo, is only for getting the Lower and Upper Matrix, no function for the final calculation.
