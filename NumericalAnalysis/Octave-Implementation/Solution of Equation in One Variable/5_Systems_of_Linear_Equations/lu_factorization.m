  % The main function of our program
  function main()

      clc; clear;

      % Get user input for the matrix size
      n = input('Enter the size of the square matrix (n): ');

      % Get user input for the matrix values
      A = zeros(n, n);
      fprintf('Enter the values for the matrix A:\n');
      for i = 1:n
          for j = 1:n
              A(i, j) = input(sprintf('A(%d,%d) = ', i, j));
          end
      end

      % Call the function to perform LU factorization
      [L, U] = lu_factorization(A);

  end

  % The Function implemented for LU Factorization Method
  function [L, U] = lu_factorization(A)

      % Step 1
      if any(diag(A) == 0)
          L = [];
          U = [];
          fprintf('LU factorization is not possible for the given matrix.\n');
          return;
      end

      % Step 2: Initialize L and U
      L = eye(size(A));
      U = zeros(size(A));

      for j = 1:size(A, 2)
          U(1, j) = A(1, j) / L(1, 1);
          L(j, 1) = A(j, 1) / U(1, 1);
      end

      % Step 3: Perform LU factorization
      for i = 2:size(A, 1) - 1

          % Step 4: Loop through each element below the diagonal in column i
          total_summation = 0;

          for k = 1:i - 1
              total_summation = total_summation + L(i, k) * U(k, i);
          end

          U(i, i) = A(i, i) - total_summation;

          for j = i + 1:size(A, 2)

              % Step 5: Calculate the multiplier
              total_summation = 0;

              for k = 1:i - 1
                  total_summation = total_summation + L(i, k) * U(k, j);
              end

              U(i, j) = (A(i, j) - total_summation) / L(i, i);

              total_summation = 0;

              for k = 1:i - 1
                  total_summation = total_summation + L(j, k) * U(k, i);
              end

              L(j, i) = (A(j, i) - total_summation) / U(i, i);

              % Step 6: Eliminate the lower triangular part of column j
              for k = 1:size(A, 1) - 1
                  % A(j, k) = A(j, k) - U(i, j) * L(j, k);
                  total_summation = 0;

                  for k = 1:size(A, 1) - 1
                      total_summation = total_summation + L(size(A, 1), k) * U(k, size(A, 1));
                  end

                  U(size(A, 1), size(A, 1)) = A(size(A, 1), size(A, 1)) - total_summation;
              end

          end

        % Step 7: Output
        fprintf('L:\n');
        disp(L);
        fprintf('U:\n');
        disp(U);

      end

  end

