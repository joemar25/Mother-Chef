% BSCS 4A
% Borrero, Jan Lance A.
% Cardiño, Joemar J.
% Roque, Kyle Arteal B.
% Zaragoza, Matthew A.

% The main function of our program
function main()

    clc; clear;

    % Main Area for Input
    g = @(x) x^3 + 4 * x^2 - 10; % equation

    p = 1.5; % initial approximation
    TOL = 10^-4; % tolerance 1e-4 or 10 ^ -4
    N = 13; % max num of iterations


    % Function calling
    fixed_point_iteration(g, p, TOL, N);

end

% The Function implemented for Fix-Point Iteration
function fixed_point_iteration(g, p, TOL, N)

    fprintf('fixed-point method\n\n%-10s %-10s %-10s %-10s %-10s\n', 'n', 'a', 'b', 'p', 'f(p)')


    % Step 1
    i = 1;

    % Step 2
    while i <= N

        % Step 3
        P = g(p);

        %fprintf('%-10d %-10f %-10f %-10f\n', i, abs(P - p), p, P);

        % Step 4
        if abs(P - p) < TOL
            p = P;
            return;
        end
        printf("%d\n", p);


        % Step 5
        i = i + 1;

        % Step 6
        p = P;
    end

    % Step 7
    fprintf('The method failed after %d iterations, N = %d\n', i, N);

end

% actual root must be 1.365230013 for this example
% TODO the printing and explanation plus testing

