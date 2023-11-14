% BSCS 4A
% Borrero, Jan Lance A.
% Cardiño, Joemar J.
% Roque, Kyle Arteal B.
% Zaragoza, Matthew A.

% The main function of our program
function main()

    clc; clear;

    % Main Area for Input
    f = @(x) x^3 + 4 * x^2 - 10;  % equation

    a = 1;                        % endpoints
    b = 2;                        % endpoints
    TOL = 10^-4;
    N = 13;

    % Function calling
    bisection_method(f, a, b, TOL, N);

end

% The Function implemented for Bisection Method
function bisection_method(f, a, b, TOL, N)

    success = false;
    fprintf('bisection method\n\n%-10s %-10s %-10s %-10s %-10s\n', 'n', 'An', 'Bn', 'Pn', 'f(Pn)')

    % Step 1
    i = 1;
    FA = f(a);

    % A vector to store the values of p
    % P = [];

    % Step 2
    while i <= N

        % Print the values of n, An, Bn, Pn, and f(Pn)
        p = a + (b - a) / 2;
        FP = f(p);
        fprintf('%-10d %-10f %-10f %-10f %-10f\n', i, a, b, p, FP);

        % Step 3
        p = a + (b - a) / 2;
        FP = f(p);

        % This will store the value of p in the vector
        % P = [P; p];

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

    % Plot the values of p
    % plot(P, 'o-');
    % title('Values of p in each iteration');
    % xlabel('Iteration');
    % ylabel('p');

end
