clear all; close all; clc;

% Define initial x and y coordinates for the points
x = [15, 20, 80, 50];
y = [95, 43, 82, 59];

% Specify the number of time steps and initial velocity
num_time_steps = 1000;
max_velocity = 0.8; % Initial maximum speed
min_velocity = 0.1; % Minimum speed after entering the region

% Define the properties for the red rectangle above the blue one
red_x = 1;       % X-coordinate of the red rectangle's bottom-left corner
red_y = 16;      % Y-coordinate of the red rectangle's bottom-left corner
red_width = 40;  % Width of the red rectangle
red_height = 15; % Height of the red rectangle

% Define properties for blue rectangle (destination)
region_x = 10; % X-coordinate of the region (bottom-left corner of the blue rectangle)
region_width = 20; % Width of the region (blue rectangle)
region_height = 15; % Height of the region (blue rectangle)

% Create a figure for plotting
figure;
hold on;

% Plot the blue rectangle
rectangle('Position', [region_x, 1, region_width, region_height], 'EdgeColor', 'b', 'LineWidth', 2);

% Plot the red rectangle
rectangle('Position', [red_x, red_y, red_width, red_height], 'EdgeColor', 'r', 'LineWidth', 2);

% Main simulation loop
for t = 1:num_time_steps
    % Calculate the distance of each point to the center of the region
    distance_to_region = sqrt((x - (region_x)).^2 + (y - (1 + region_height/ 2)).^2);
    
    % Determine the speed based on the position
    velocity = zeros(2, numel(x)); % Initialize velocities to zero
    
    % Check if the point is inside or has passed through the red region
    inside_red_region_or_passed = (x >= red_x) & (x <= region_x + region_width) & (y >= red_y) & (y <= red_y + red_height);
    
    % Set the velocity for points inside or passed through red region
    velocity(:, inside_red_region_or_passed) = min_velocity * [((region_x) - x(inside_red_region_or_passed))./distance_to_region(inside_red_region_or_passed); ((1 + region_height / 2) - y(inside_red_region_or_passed))./distance_to_region(inside_red_region_or_passed)];
    
    % Check if the point is outside both regions and has not passed through red region
    outside_regions_not_passed_red = ~inside_red_region_or_passed & ~((x >= region_x) & (x <= region_x + region_width) & (y >= 1) & (y <= 1 + region_height));
    
    % Set the velocity for points outside both regions and not passed through red region
    velocity(:, outside_regions_not_passed_red) = max_velocity * [((region_x) - x(outside_regions_not_passed_red))./distance_to_region(outside_regions_not_passed_red); ((1 + region_height / 2) - y(outside_regions_not_passed_red))./distance_to_region(outside_regions_not_passed_red)];
    
    % Update x and y coordinates
    x = x + velocity(1, :);
    y = y + velocity(2, :);
    
    % Check if points have reached blue rectangle and stop them there
    reached_blue_rectangle = (x >= region_x) & (x <= region_x + region_width) & (y >= 1) & (y <= 1 + region_height);
    x(reached_blue_rectangle) = x(reached_blue_rectangle) - velocity(1, reached_blue_rectangle);
    y(reached_blue_rectangle) = y(reached_blue_rectangle) - velocity(2, reached_blue_rectangle);
    
    % Plot the points
    scatter(x, y, 'm', 'o');
    
    % Customize the plot
    xlabel('X axis');
    ylabel('Y axis');
    title('Moving Scatter Plot');
    xlim([0, 100]); % Adjust the x-axis limits as needed
    ylim([0, 100]); % Adjust the y-axis limits as needed
    grid on;
    
    % Plot the specified 4 points as 'o' markers
    scatter(x(1:4), y(1:4), 'o', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'g', 'LineWidth', 2);
    
   drawnow; % Update the figure
    
    pause(0.1); % Control animation speed (adjust as needed)
end