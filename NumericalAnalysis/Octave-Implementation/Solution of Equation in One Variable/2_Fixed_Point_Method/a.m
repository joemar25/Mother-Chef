% The main function of our program
function main()

    clc; clear;

    % Main Area for Input
    g = @(x) x.^5 - 3*x.^3 - 2*x.^2 + 2; % equations

    % Try different initial approximations
    initial_approximations = [0.5, 1.0, 1.5];

    % Define colors for each fixed point
    colors = ['r', 'g', 'b'];

    for i = 1:length(initial_approximations)
        p = initial_approximations(i);
        TOL = 1e-4; % tolerance
        N = 50;     % max num of iterations

        % Function calling
        fixed_point_iteration(g, p, TOL, N, colors(i));
    end

    % Plot the function and y=x line
    x_vals = linspace(-2, 2, 1000);
    y_vals = g(x_vals);

    figure;
    plot(x_vals, y_vals, 'DisplayName', 'g(x)');
    hold on;
    plot(x_vals, x_vals, '--', 'DisplayName', 'y = x');

    % Highlight fixed points with distinct colors
    for i = 1:length(initial_approximations)
        p = initial_approximations(i);
        color = colors(i);
        plot(p, g(p), [color 'o'], 'DisplayName', sprintf('Fixed Point: %.1f', p));
    end

    xlabel('x');
    ylabel('g(x)');
    title('Fixed-Point Iteration');
    legend('Location', 'northeast');
    grid on;
    hold off;

end

% The Function implemented for Fix-Point Iteration
function fixed_point_iteration(g, p, TOL, N, color)

    success = false;
    fprintf('fixed-point method\n');

    % Step 1
    i = 1;

    % Step 2
    while i <= N

        % Step 3
        P = g(p);

        % Step 4
        if abs(P - p) < TOL
            fprintf('\nProcedure completed successfully. Root: %.10f\n', p);

            success = true;
            return;
        end

        % Step 5
        i = i + 1;

        % Step 6
        p = P;
    end

    % Step 7 - if not success
    if ~success
        fprintf('\nMethod failed after %d iterations\n', N);
        fprintf('The procedure was unsuccessful.\n');
    end
end

