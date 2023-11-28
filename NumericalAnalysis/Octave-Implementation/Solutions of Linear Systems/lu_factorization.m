% BSCS 4A
% Borrero, Jan Lance A.
% Cardiño, Joemar J.
% Roque, Kyle Arteal B.
% Zaragoza, Matthew A.

% The main function of our program
function main()

    clc; clear;

    % Main Area for Input
    A = [4, 3; 6, 3];

    % Function calling
    [L, U] = lu_factorization(A);
    display(L);

end

% The Function implemented for Newton's Method
function [L, U] = lu_factorization(A)

    % Get the size of the matrix
    n = size(A, 1);

    % Initialize L and U with zeros
    L = eye(n);
    U = zeros(n);

    for i = 1:n

        for j = i:n
            % Calculate entries for U
            U(i, j) = A(i, j) - L(i, 1:i - 1) * U(1:i - 1, j);
        end

        for j = i + 1:n
            % Calculate entries for L
            L(j, i) = (A(j, i) - L(j, 1:i - 1) * U(1:i - 1, i)) / U(i, i);
        end

    end

end
