% The main function of our program
function main()

    clc; clear;

    % Main Area for Input
    f = @(x) x + e.^(-x^2) * cos(x);

    % For automatic derivation
    pkg load symbolic;
      syms sym_x;
      sym_f = sym(f(sym_x));
    sym_df = diff(sym_f);
    f_prime = function_handle(sym_df);

    P = 0;
    TOL = 10^-8;
    N = 50;

    % Function calling
    newtons_method(f, f_prime, P, TOL, N);

    % Unload the symbolic package if it was loaded in this function
    pkg unload symbolic

end

% The Function implemented for Newton's Method
function newtons_method(f, f_prime, P, TOL, N)
    success = false;
    fprintf("newton's method\n\n%-10s %-10s %-10s %-10s %-10s\n", 'i', "x", "f(x)", "f'(x)", "f(p)");

    % Step 1
    i = 1;

    % Step 2
    while i <= N

        % Step 3
        p = P - f(P)/ f_prime(P);

        % Evaluate the function at the approximation
        f_p = f(p);

        % Printing
        fprintf('%-10d %-10f %-10f %-10f %-10f\n', i, P, p, f_prime(P), f_p);

        % Step 4
        if abs(p-P) < TOL
            fprintf('\nThe root of the equation is %f.\nThe procedure was successful.\n', p);

            success = true;
            return;
        end

        % Step 5
        i = i + 1;

        % Step 6
        P = p;
    endwhile

    % Step 7 - if not success
    if ~success
        fprintf('\nMethod failed after %d iterations\n', N);
        fprintf('The procedure was unsuccessful.\n');
    end
end


