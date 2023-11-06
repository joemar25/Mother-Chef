% BSCS 4A
% Borrero, Jan Lance A.
% Cardiño, Joemar J.
% Roque, Kyle Arteal B.
% Zaragoza, Matthew A.

% The Function implemented using the Algorithm for Bisection Method for root finding
function p = bisection_method(f, a, b, TOL, N)
  % Step 1
  i = 1;
  FA = f(a);

  % Step 2
  while i <= N
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
  fprintf('Method failed after %d iterations\n', N_0);
  fprintf('The procedure was unsuccessful.\n');
end

% clear screen
clc, clear

% Main Area for Input and Displaying of Output
f = @(x) x^3 + 4*x^2 - 10;  % equation
TOL = 5;                    % tolerance
N = 10;                     % max num of iterations
a = 1;
b = 2;

p = bisection_method(f, a, b, TOL, N);

