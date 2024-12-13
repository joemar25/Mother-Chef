  % The Function implemented for Newton's Method
  function secant_method(f, p0, p1, TOL, N)

      success = false;
      fprintf("Secant Method\n\n%-10s %-10s %-10s %-10s %-10s %-10s\n", 'n', 'p0', 'p1', 'f(p0)', 'f(p1)', 'p');

      % Step 1
      i = 2;

      % Modified q initialization
      q0 = f(p0);
      q1 = f(p1);

      % Step 2
      while i <= N
          % Step 3
          p = p1 - q1 * ((p1 - p0) / (q1 - q0));
          fprintf('%-10d %-10f %-10f %-10f %-10f %-10f\n', i, p0, p1, q0, q1, p);

          % Step 4
          if abs(p - p1) < TOL
              fprintf('The procedure was successful. The solution is %f\n', p);

              % plot_convergence(f, p0, p1, p);
              success = true;
              return;
          end

          % Step 5
          i = i + 1;

          % Step 6
          p0 = p1;
          q0 = q1;
          p1 = p;
          q1 = f(p);
      end

      % Step 7 - if not success
      if ~success
          fprintf('\nMethod failed after %d iterations\n', N);
          fprintf('The procedure was unsuccessful.\n');
      end
  end

  % Plot Convergence Function
  function plot_convergence(f, p0, p1, p)
      iterations = 1:length(p0);

      % Create a figure for the function plot
      figure;
      subplot(2, 1, 1);

      % Plot the function using fplot
      x_vals = linspace(min([p0, p1, p]), max([p0, p1, p]), 1000);
      y_vals = f(x_vals);
      plot(x_vals, y_vals, 'DisplayName', 'f(x)');
      hold on;

      % Plot successful fixed points
      for i = 1:length(p)
          plot(p(i), f(p(i)), 'ro', 'DisplayName', sprintf('p_%d', i));
      end

      xlabel('x');
      ylabel('f(x)');
      title('Function Plot and Successful Iterations');
      legend('Location', 'northeast');
      grid on;
      hold off;

      % Create a subplot for the convergence plot
      subplot(2, 1, 2);
      plot(iterations, p0, '-o', 'DisplayName', 'p0');
      hold on;
      plot(iterations, p1, '-o', 'DisplayName', 'p1');
      plot(iterations, p, '-o', 'DisplayName', 'p');

      xlabel('Iteration');
      ylabel('Approximation');
      title('Convergence Plot');
      legend('Location', 'northeast');
      grid on;
      hold off;
  end

