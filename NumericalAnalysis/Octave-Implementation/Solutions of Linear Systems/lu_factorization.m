  % The main function of our program
  function main()

      clc; clear;

      % Define your matrix A here
      A = [
          1 1 -1;
          0 -2 3;
          2 3 1
      ];

      % Call the function to perform LU factorization
      [L, U] = lu_factorization(A);

      % Print the L and U matrices
      fprintf('L:\n');
      disp(L);
      fprintf('U:\n');
      disp(U);

  end

  % The Function implemented for LU Factorization Method
  function [L, U] = lu_factorization(A)

      % Step 1: Check if A is square
      if size(A, 1) ~= size(A, 2)
          error('Input matrix must be square');
      end

      % Step 2: Initialize L and U
      L = eye(size(A));
      U = zeros(size(A));

      % Step 3: Perform LU factorization
      for i = 1:size(A, 1)

          % Step 4: Loop through each element below the diagonal in column i
          for j = i + 1:size(A, 2)

              % Step 5: Calculate the multiplier
              U(i, j) = A(i, j) / L(i, i);
              L(j, i) = A(j, i) / L(j, j);

              % Step 6: Eliminate the lower triangular part of column j
              for k = 1:i - 1
                  A(j, k) = A(j, k) - U(i, j) * L(j, k);
              end

          end

          % Step 7: Update the diagonal elements of L
          % handle division by zero
          for k = i + 1:size(A, 1)

              if U(i, i) == 0
                  L(k, i) = 0;
              else
                  L(k, i) = A(k, i) / U(i, i);
              end

          end

      end

  end

  % Note: The LU factorization is not unique, and different algorithms or implementations may produce different decompositions.
