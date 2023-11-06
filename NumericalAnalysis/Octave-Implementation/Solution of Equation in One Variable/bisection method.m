% BSCS 4A
% Borrero, Jan Lance A.
% Cardiño, Joemar J.
% Roque, Kyle Arteal B.
% Zaragoza, Matthew A.

% The Function implemented using the Algorithm for Bisection Method for root finding
function p = bisection_method(f, a, b, TOL, N)
    printf('%-10s %-10s %-10s %-10s %-10s\n', 'n', 'An', 'Bn', 'Pn', 'f(Pn)')

    % Step 1
    i = 1;
    FA = f(a);

    % A vector to store the values of p
    P = [];

    % Step 2
    while i <= N
        % Step 3
        p = a + (b - a) / 2;
        FP = f(p);

        % This will store the value of p in the vector
        P = [P; p];

        % Step 4
        if FP == 0 || (b - a) / 2 < TOL
            printf('%-10d %-10f %-10f %-10f %-10f\n', i, a, b, p, FP);
            % return; % Note: uncomment to only get the first iteration
        else
            printf('%-10s %-10s %-10s %-10s %-10s\n', '-', '-', '-', '-', '-');
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
    % printf('Method failed after %d iterations\n', N);
    % printf('The procedure was unsuccessful.\n');

    % Plot the values of p
    plot(P, 'o-');
    title('Values of p in each iteration');
    xlabel('Iteration');
    ylabel('p');
end

% clear screen
clc, clear

% Main Area for Input and Displaying of Output(Initial)
f = @(x) x^3 + 4 * x^2 - 10; % equation
TOL = 1; % tolerance 1e-4 or 10 ^ -4
N = 13; % max num of iterations
a = 1;
b = 2;

p = bisection_method(f, a, b, TOL, N);
