% BSCS 4A
% Borrero, Jan Lance A.
% Cardiño, Joemar J.
% Roque, Kyle Arteal B.
% Zaragoza, Matthew A.

% The main function of our program
function main()
    clc; clear;

    % Main Area for Input
    f = @(x) x^3 + 4 * x^2 - 10; % equation
    TOL = 10^-4; % tolerance 1e-4 or 10 ^ -4
    N = 13; % max num of iterations
    a = 1;
    b = 2;

    % Function calling
    fixed_point_iteration(f, a, b, TOL, N);
end

% The Function implemented using the Algorithm for Bisection Method for root finding
function fixed_point_iteration(g, P0, TOL, N)
    i = 1;
    while i <= N
        P = g(P0);
        if abs(P - P0) < TOL
            p = P;
            return;
        end
        i = i + 1;
        P0 = P;
    end
    fprintf('The method failed after %d iterations, N = %d\n', i, N);
end








