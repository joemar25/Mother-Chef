% The main function of our program
function main()

    clc; clear;


    % Main Area for Input
    f = @(x) x^4 - 2*x^2 - 4;

    p_sub_0 = 2;
    p_sub_1 = 3;
    ;
    TOL = 10^-6;
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
