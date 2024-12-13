% The main function of our program
function main()

    clc; clear;

    % Main Area for Input
    f = @(x) x.^4 - 2 * x.^2 - 4;

    p0 = 2;
    p1 = 3;
    TOL = 10^-6;
    N = 13;

    % Function calling
    secant_method(f, p0, p1, TOL, N);
end

