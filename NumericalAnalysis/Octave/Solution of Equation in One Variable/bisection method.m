% The Function implemented using the Algorithm for Bisection Method for root finding
function p = bisection_method(f, a, b, TOL, N_0)
  % Step 1
  i = 1;
  FA = f(a);

  % Step 2
  while i <= N_0
    % Step 3
    p = a + (b - a) / 2;
    FP = f(p);

    % Step 4
    if FP == 0 || (b - a) / 2 < TOL
      fprintf('Approximate solution: %f\n', p);
      return;
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

  % Step 7
  fprintf('Method failed after %d iterations, N_0 = %d\n', N_0, N_0);
  fprintf('The procedure was unsuccessful.\n');
end

% clear screen
clc, clear

% Main Area for Input and Displaying of Output
f = @(x) x^3 + 4*x^2 - 10;
a = 1;
b = 2;
TOL = 5;
N_0 = 10;

p = bisection_method(f, a, b, TOL, N_0);

