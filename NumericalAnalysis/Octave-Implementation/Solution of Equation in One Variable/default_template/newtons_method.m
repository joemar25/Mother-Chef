% BSCS 4A
% Borrero, Jan Lance A.
% Cardiño, Joemar J.
% Roque, Kyle Arteal B.
% Zaragoza, Matthew A.

% The main function of our program
function main()

    clc; clear;

    % Main Area for Input
    P = 1.5; % TODO
    TOL = 10^-4;
    N = 13;

    % Function calling
    newtons_method(P, TOL, N);

end

% The Function implemented for Newton's Method
function newtons_method(P, TOL, N)

    fprintf("newton's method\n\n%-10s %-10s %-10s %-10s %-10s\n", '(a)', '(b)', '(c)', '(d)', '(e)')

    % Step 1
    i = 1;

    % Step 2
    while i <= N

        % Step 3
        p = P - f(P)/f_prime(P);

        % Printing
        fprintf('%-10d %-10f %-10f %-10f %-10f\n', i, p, P, p, P); % TODO

        % Step 4
        if abs(p-P) < TOL
            fprintf('\nThe root of the equation is %f.\nThe procedure was successful.\n', p);
            return;
        end

        % Step 5
        i = i + 1;

        % Step 6
        P = p;
    endwhile

    % Step 7
    fprintf('The method failed after %d iterations\n', N);

end

% Define the function f(x)
function y = f(x)
    y = x^3 - x^2 - 1; % TODO
end

% Define the derivative of the function f'(x)
function y = f_prime(x)
    y = 3*x^2 - 2*x; % TODO
end

% input p, TOL, N
% Step 1
% Set i = 1
% step 2
% while i <= N do step 3-6
%   step 3 set p=P - f(P)/f'(P). (compute p)
%   step 4 if |p-P| < TOL then
%     OUTPUT (p); (The procedure was successful)
%     STOP.
%   Step 5. Set i = i + 1
%   Step 6 Set P = p (Update P)
% Step 7 OUTPUT ('The method failed after N iterations, N=',N);
% (The Procedure was unsuccessful)
% STOP

