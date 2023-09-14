clear all, close all, clc

NumberOfShips = 4;

%The coordinates in Kilometers
WaitingArea_X =60;
WaitingArea_Y = 55;

GatunLock_X=50;                                   % -8897078.610694783; 
GatunLock_Y   = 50;                                %1036168.165331466;

PedroMiguelLock_X= 25;                              %-8862496.431643415
PedroMiguelLock_Y=35;                            %1007985.5949058195

MirafloresLock_X=25;                               %-8860038.497286702
MirafloresLock_Y=25;                              %1005695.3405305779

CocoliLocks_X=35;                                %-8860780.998290291                 
CocoliLocks_Y=25;                             %1004273.0130512436

AguaClaraLocks_X=60;                           %-8895799.883704038          
AguaClaraLocks_Y=50;                        %1036592.0388014461

time_hours= 2.5;
% Earth's radius in kilometers (approximately)
R = 6371;

fprintf("Enter the ships informations.\n");
% Initialize an array to store the distances of all ships in kilometers
distances_km = zeros(1, NumberOfShips);

for i = 1:NumberOfShips

    lat = input(sprintf('Enter the ship latitude (degrees) #%.f: ', i));
    lon = input(sprintf('Enter the ship longitude (degrees) #%.f: ', i));

    % Convert latitude and longitude to radians
    LatRad = deg2rad(lat);
    LonRad = deg2rad(lon);

    % Calculate (x, y) coordinates in kilometers
    Ship_X = R * cos(LatRad) * cos(LonRad);
    Ship_Y = R * cos(LatRad) * sin(LonRad);

    % Calculate distance to Agua Clara Locks Lock in kilometers
    ShipsToGate_Dist_km = sqrt((Ship_X - AguaClaraLocks_X)^2 + (Ship_Y - AguaClaraLocks_Y)^2);

    distances_km(i) = ShipsToGate_Dist_km;

end

% Sort the distances in ascending order
[new_sorted_distances, new_sorted_indices] = sort(distances_km);



% Loop over all ships
for i = 1:NumberOfShips
    % Find the index of the ship's distance in the sorted array
    index = find(new_sorted_indices == i);
    
    % Display a message with the ship's position in the queue
    fprintf('Ship %.f is number %.f in the queue.\n', i, index);
end



num_updates = 10; % Number of updates
time_step = 2;    % Time interval between updates

ChangingDirection = menu("Enter the coordiantes please", "Ok");

        for i = 1:num_updates
            
      ShipWaiting_X = input(sprintf('Enter the ship latitude (degrees) #%.f: ', i));
    ShipWaiting_Y = input(sprintf('Enter the ship longitude (degrees) #%.f: ', i));

    % Calculate distance using the distance formula
    distance_to_waiting_area = sqrt((WaitingArea_X - ShipWaiting_X)^2 + (WaitingArea_Y - ShipWaiting_Y)^2);

    fprintf('Remaining distance to the waiting area: %.2f kilometers.\n', distance_to_waiting_area);
       
    disp("The ship must slow down.");
    
    speed_kmph = distance_to_waiting_area/time_hours;
    fprintf('You should slow down by: %.4f', speed_kmph);


            New_Direction_Again = menu("Do you want to change the direction again?", "Yes.", "No");
            switch New_Direction_Again
                case 1
                    fprintf("Enter the information again.\n")
                case 2
                    fprintf("Ship is going in the same direction.\n");
                    break; % Exit the loop if the user chose "No"
                otherwise
                    fprintf("Invalid choice.\n");
            end
            end
   