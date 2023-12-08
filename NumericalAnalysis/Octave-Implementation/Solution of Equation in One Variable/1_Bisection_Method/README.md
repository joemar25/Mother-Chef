# The Bisection Method Guide

<p>
The bisection method is a simple numerical technique used to find the roots of a continuous function within a given interval. It works by repeatedly dividing the interval in half and then selecting the subinterval in which the function changes sign. The process is repeated until the interval becomes sufficiently small, at which point the root is approximately determined.</p>

## This guide provides a complete code for the Bisection Method implemented in Octave.

> <p>The Function implemented using the Algorithm for Bisection Method for root finding:</p>
<pre>
    function p = bisection_method(f, a, b, TOL, N)
    printf('%-10s %-10s %-10s %-10s %-10s\n', 'n', 'An', 'Bn', 'Pn', 'f(Pn)')
</pre>

## Steps

<br/>
<b>Step 1.</b> Sets the Initialization variable to 1, and Initialize FA equal to function value of a.
<pre>
    i = 1;
    FA = f(a);
</pre>
A vector to store the values of p
<pre>
  P = [];
</pre>
<br/>
<b>Step 2.</b>
<pre>
   while i <= N
</pre>
<br/>
<b>Step 3.</b>
<pre>
    p = a + (b - a) / 2;
        FP = f(p);
</pre>
This will store the value of p in the vector      
<pre>
  P = [P; p];
</pre>
<br/>
<b>Step 4.</b>
<pre>
     if FP == 0 || (b - a) / 2 < TOL
            printf('%-10d %-10f %-10f %-10f %-10f\n', i, a, b, p, FP);
            %return; # To only get the first iteration, remove the '%' before the 'return;'
        else
            printf('%-10s %-10s %-10s %-10s %-10s\n', '-', '-', '-', '-', '-');
        end
</pre>
<br/>
<b>Step 5.</b> Increments the initialization variable after successful procedure.
<pre>
  i = i + 1;
</pre>
<br/>
<b>Step 6.</b>
<pre>
   if FA * FP > 0
            a = p;
            FA = FP;
        else
            b = p;
        end
    end 
</pre>
<br/>
<b>Step 7.</b> The prgram prints the following if the <em>Method</em> failed to find the approximate solution after <em>N<sub>0</sub></em> iterations.
<pre>
    printf('Method failed after %d iterations\n', N);
    printf('The procedure was unsuccessful.\n');
</pre>
Plot the values of p
<pre>
    plot(P, 'o-');
    title('Values of p in each iteration');
    xlabel('Iteration');
    ylabel('p');
  end    # end of whole program
</pre>
<br/>

## Others

> To clear screen:</b>

<pre>
  clc

  <em>or</em>
  
  clear
</pre>
<br/>

> Main Area for Input and Displaying of Output(Initial)

<pre>
  f = @(x) x^3 + 4 * x^2 - 10;              # equation
  TOL = 1;                                  # tolerance 1e-4 or 10 ^ -4
  N = 13;                                   # max num of iterations
  a = 1;                                    # input of endpoint <em>a</em>
  b = 2;                                    # input of endpoint <em>b</em>
  <br/>
  p = bisection_method(f, a, b, TOL, N);    # Approximate value of solution <em>p</em>
</pre>



