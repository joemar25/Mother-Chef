% BSCS 4A
% Borrero, Jan Lance A.
% Cardiño, Joemar J.
% Roque, Kyle Arteal B.
% Zaragoza, Matthew A.

% The main function of our program
function main()

    clc; clear;

    % Main Area for Input
    f = @(x) x^2 - 2 * x - 1;

    p_sub_0 = 2.6;
    p_sub_1 = 2.5;
    TOL = 0;
    N = 13;

    % Function calling
    secant(f, p_sub_0, p_sub_1, TOL, N);

end

% The Function implemented for Newton's Method
function secant(f, p_sub_0, p_sub_1, TOL, N)

    fprintf("secant method\n\n%-10s %-10s %-10s %-10s %-10s %-10s\n", 'n', 'p0', 'p1', 'q0', 'q1', 'p')

    % Step 1
    i = 2;

    % Modified q initialization
    q_sub_0 = f(p_sub_0);
    q_sub_1 = f(p_sub_1);

    % Step 2
    while i <= N

        % Step 3
        p = p_sub_1 - q_sub_1 * ((p_sub_1 - p_sub_0) / (q_sub_1 - q_sub_0));
        fprintf('%-10d %-10f %-10f %-10f %-10f %-10f\n', i, p_sub_0, p_sub_1, q_sub_0, q_sub_1, p);

        % Step 4
        if abs(p - p_sub_1) < TOL
            fprintf('The procedure was successful. The solution is %f\n', p);
            return;
        end

        % Step 5
        i = i + 1;

        % Step 6
        p_sub_0 = p_sub_1;
        q_sub_0 = q_sub_1;
        p_sub_1 = p;
        q_sub_1 = f(p);

    end

    % Step 7
    fprintf('The method failed after %d iterations\n', N);
end

% input p sub 0, p sub 1, TOL, N
% Step 1
% Set i = 2
%     q sub 0 = f(p sub 0)
%     q sub 1 = f(p sub 1)
% step 2
% while i <= N do step 3-6
%   step 3 set p = P sub 1 - q sub 1 (p sub 1 - p sub 0) / (q sub 1 - q sub 0). (compute p sub i)
%   step 4 if |p-P| < TOL then
%     OUTPUT (p); (The procedure was successful)
%     STOP.
%   Step 5. Set i = i + 1
%   Step 6 Set p sub 0 = p sub 1 (Update p sub 0, q sub 0, p sub 1, q sub 1)
%              q sub 0 = q sub 1
%              p sub 1 = p
%              q sub 1 = f(p)
% Step 7 OUTPUT ('The method failed after N iterations, N=',N);
% (The Procedure was unsuccessful)
% STOP
