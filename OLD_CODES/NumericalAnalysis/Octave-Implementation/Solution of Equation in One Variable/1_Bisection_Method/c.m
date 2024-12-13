% The main function of our program
function main()

    clc; clear;

    % Main Area for Input
    f = @(x) 1 / x - 2;           % equation

    a = 3;                        % interval a
    b = 7;                        % interval b
    TOL = 10^-4;                  %
    N = 20;

    % Function calling
    result = equation_checker(f, a, b);
    if result == 1
      bisection_method(f, a, b, TOL, N);
    else
      display("bisection's first condition not satisfied");
    endif

end

function result = equation_checker(f, a, b)
    fa = f(a);
    printf("f(a) = %d\n", fa);
    fb = f(b);
    printf("f(b) = %d\n", fa);

    result = fa * fb < 0;
end

% The Function implemented for Bisection Method
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

    % Step 7 - if not success
    if ~success
        fprintf('\nMethod failed after %d iterations\n', N);
        fprintf('The procedure was unsuccessful.\n');
    end
end
