% BSCS 4A
% Borrero, Jan Lance A.
% Cardiño, Joemar J.
% Roque, Kyle Arteal B.
% Zaragoza, Matthew A.

MAX_SIZE = 50;

% Function of coefficients matrix A and constants vector b values
function A = matrixVals(n)
  A = [
    5, 1, 1, 5;
    1, 4, 1, 4;
    1, 1, 3, 3;
  ];
end

% A Function to Display the Matrix in Linear System Form
function printOGmatrix(A)
  [n, ~] = size(A);

  for i = 1:n
    fprintf("E_%d :  ", i);
    for j = 1:n
      fprintf("%.2f x_%d    ", A(i,j), j);
    end
    fprintf("|    %.2f\n", A(i,n + 1));
  end
  fprintf("\n");
end

% A Function to Display the Matrix in each change
function printMatrix(A)
  [n, ~] = size(A);

  for i = 1:n
    for j = 1:n
      fprintf("%.2f\t", A(i,j));
    end
    fprintf("|    %.2f\n", A(i,n + 1));
  end
  fprintf("\n");
end

% A Function to check whether the Matrix is already in the form of Upper Triangular Matrix
function result = checkUTM(A)
  [n, ~] = size(A);

  for i = 2:n
    for j = 1:i - 1
      if A(i,j) ~= 0
        result = 0; % Not in upper triangular form
        return;
      end
    end
  end

  result = 1; % Upper triangular form
end

% The whole implemented Function for the Gaussian Elimination with Backwards Substitution with steps
function gaussElim(A)
  [n, ~] = size(A);

  % Check if the matrix is already in upper triangular form
  if checkUTM(A)
    disp("Matrix is already in upper triangular form. Proceeding to Backward Substitution.");
  else
    % Step 1: Forward Elimination
    for i = 1:n - 1
      % Step 2
      p = i;
      while p <= n && A(p,i) == 0
        p = p + 1;
      end

      if p == n + 1
        disp("No unique solution exists.");
        return;
      end

      % Step 3
      if p ~= i
        temp = A(p,:);
        A(p,:) = A(i,:);
        A(i,:) = temp;
      end

      % Display the matrix for each column change
      fprintf("Column %d:\n", i);
      printMatrix(A);

      % Step 4
      for j = i + 1:n

        % Step 5
        m = A(j,i) / A(i,i);
        Aji = A(j,i);
        Aii = A(i,i);

        % Display how we got m values
        fprintf("m_%d%d = A_%d%d / A_%d%d\n", j, i, j, i, j, i);
        fprintf("m_%d%d = %.2f / %.2f\n", j, i, Aji, Aii);
        % Display the value of m for each cell changed to zero
        fprintf("m_%d%d = %.2f\n\n", j, i, m);

        % Step 6
        for k = i:n + 1
          A(j,k) = A(j,k) - m * A(i,k);
        end

        % Display the matrix after each cell change of each column
        fprintf("After performing (E_%d) - ((%.2f)E_%d) -> (E_%d)\n\n", j, m, j, j);
        printMatrix(A);
      end
    end

    % Display the final matrix after the Elimination process
    fprintf("After the Elimination process, we get:\n");
    printMatrix(A);

    % Step 7
    if A(n,n) == 0
      disp("No unique solution exists.");
      return;
    end
  end

  % Step 8 & 9: Backward Substitution
  for i = n:-1:1
    sum = A(i,n + 1);
    for j = i + 1:n
      sum = sum - A(i,j) * A(j,n + 1);
    end
    A(i,n + 1) = sum / A(i,i);
  end

  % Display the matrix after applying Backwards Substitution
  fprintf("After Backward Substitution:\n");
  printMatrix(A);

  % Step 10: Displays the solution values of each x variables
  fprintf("Solution:\n");
  for i = 1:n
    fprintf("x_%d = %.2f\n", i, A(i,n + 1));
  end
  fprintf("\n");
  fprintf("or");
  fprintf("\n\n");

  fprintf("α = %d\n", A(1,4));
  fprintf("β = %d\n", A(2,4));
  fprintf("γ = %d\n", A(3,4));
end

% The main function of the Gaussian Elimination with Backwards Substitution program
function main()

  % Call matrixVals to define A
  A = matrixVals();

  % Display the Matrix in Linear System Form
  fprintf("\nThe Linear System:\n");
  printOGmatrix(A);

  % Performs the Gaussian Elimination with Backward Substitution
  gaussElim(A);
end

main();

