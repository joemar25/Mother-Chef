% The main function of our program
function main()
    clc; clear;

    % Main Area for Input
    g = @(x) x.^(x - cos(x)); % equation

    % Try different initial approximations
    initial_approximations = [0.5, 1.0, 1.5];

    % Call the loop and plotting function
    iterate_and_plot(g, initial_approximations);

end

% Function to perform Fixed-Point Iteration and plot the result
  function iterate_and_plot(g, initial_approximations)

      fprintf('Fixed-Point Iteration\n');

      % Initialize arrays to store results for later plotting
      successful_points = [];
      unsuccessful_points = [];

      for i = 1:length(initial_approximations)
          p = initial_approximations(i);
          TOL = 10^-10; % tolerance
          N = 50;      % max num of iterations

          % Function calling
          [success, root] = fixed_point_iteration(g, p, TOL, N);

          % Display results and update arrays for plotting
          if success
              fprintf('Initial approximation %.1f: Iteration succeeded. Root: %.10f\n', p, root);
              successful_points = [successful_points; p, root];
          else
              fprintf('Initial approximation %.1f: Iteration failed after %d iterations\n', p, N);
              unsuccessful_points = [unsuccessful_points; p];
          end
      end

      % Plot the function, y=x line, and fixed points using fplot
      plot_function(g, successful_points, unsuccessful_points);
  end

% Function to perform Fixed-Point Iteration
function [success, root] = fixed_point_iteration(g, p, TOL, N)

    success = false;

    % Step 1
    i = 1;

    % Step 2
    while i <= N

        % Step 3
        P = g(p);

        % Step 4
        if abs(P - p) < TOL

            success = true;
            root = p;
            return;
        end

        % Step 5
        i = i + 1;

        % Step 6
        p = P;
    end

    % Step 7 - if not success
    root = NaN;
end

% Function to plot the function, y=x line, and fixed points
function plot_function(g, successful_points, unsuccessful_points)
    figure;

    % Plot the function and y=x line using fplot
    x_vals = linspace(0.1, 2, 1000);
    y_vals = g(x_vals);

    plot(x_vals, y_vals, 'DisplayName', 'g(x) = x^{x - cos(x)}');
    hold on;
    plot(x_vals, x_vals, '--', 'DisplayName', 'y = x');

    % Plot successful fixed points
    for i = 1:size(successful_points, 1)
        plot(successful_points(i, 1), g(successful_points(i, 1)), 'ro', 'DisplayName', sprintf('Success: %.1f', successful_points(i, 1)));
    end

    % Plot unsuccessful fixed points
    for i = 1:length(unsuccessful_points)
        plot(unsuccessful_points(i), g(unsuccessful_points(i)), 'bo', 'DisplayName', sprintf('Fail: %.1f', unsuccessful_points(i)));
    end

    xlabel('x');
    ylabel('g(x)');
    title('Fixed-Point Iteration');
    legend('Location', 'northeast');
    grid on;
    hold off;
end

