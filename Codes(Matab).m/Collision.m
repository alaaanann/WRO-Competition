clear all, close all, clc;

% Given values
%theta1 = -pi/3;
%theta2 = pi/3;
x1_0 = 5;
x2_0 = -5;
%v = 2;
v1 = input("Enter the velocity of the 1st ship: ");
v2 = input("Enter the velocity of the 1st ship: ");
tolerance = 1e-1; % Define a suitable tolerance

% Preallocate for speed
t_values = linspace(0, 3600, 360000);
intersection_times = [];

num_iterations = 10;  % Specify the number of iterations

% Preallocate arrays
x1_values = zeros(num_iterations, length(t_values));
y1_values = zeros(num_iterations, length(t_values));
x2_values = zeros(num_iterations, length(t_values));
y2_values = zeros(num_iterations, length(t_values));
t_values_all = zeros(num_iterations, 1);



% Loop through the range of angles
for iteration = 0:num_iterations
    angle_deg = iteration * 360 / num_iterations; % Calculate angle in degrees
    angle_rad = deg2rad(angle_deg); % Convert angle to radians

    theta1 = angle_rad;
    theta2 = angle_rad;

    % Loop through t values
    for t = 1:length(t_values)
        x1_values(iteration+1, t) = x1_0 + sin(theta1) * v1 * t_values(t);
        y1_values(iteration+1, t) = sin(theta1) * v1 * t_values(t);
        x2_values(iteration+1, t) = x2_0 + sin(theta2) * v2 * t_values(t);
        y2_values(iteration+1, t) = sin(theta2) * v2 * t_values(t);

        if abs(x1_values(iteration+1, t) - x2_values(iteration+1, t)) < tolerance
            intersection_times = [intersection_times; t, x1_values(iteration+1, t), y2_values(iteration+1, t)];
            
            % Display the angle, x-coordinate, y-coordinate, and t-value in one line
            % disp(['Angle (rad): ', num2str(angle_rad), '  x1: ', num2str(x1_values(iteration+1, t)), '  y1: ', num2str(y1_values(iteration+1, t)), '  x2: ', num2str(x2_values(iteration+1, t)), '  y2: ', num2str(y2_values(iteration+1, t)), '  t: ', num2str(t_values(t))]);
        end
    end

    matlab


% Print the final values

    disp(['Angle (rad): ', num2str(angle_rad), '  Angle (deg): ', num2str(rad2deg(angle_rad)), '  x1: ', num2str(x1_values(end, end)), '  y1: ', num2str(y1_values(end, end)), '  x2: ', num2str(x2_values(end, end)), '  y2: ', num2str(y2_values(end, end)), '  t: ', num2str(t_values(end))]);
   disp(" ");
    % Store the angle value
    t_values_all(iteration+1) = angle_rad;
end
