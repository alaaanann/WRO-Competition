clear all, close all
clc


NumberOfShips = 4;

GatunLock_X=50;                                   % -8897078.610694783; 
GatunLock_Y   = 50;                                %1036168.165331466;

PedroMiguelLock_X= 25;                              %-8862496.431643415
PedroMiguelLock_Y=35;                            %1007985.5949058195

MirafloresLock_X=25;                               %-8860038.497286702
MirafloresLock_Y=25;                              %1005695.3405305779

CocoliLocks_X=35;                                %-8860780.998290291                 
CocoliLocks_Y=25;                             %1004273.0130512436

AguaClaraLocks_X=60;                           %-8895799.883704038          
AguaClaraLocks_Y=50;    



ShipCode = input("What is the code (S1-S2)/(M1-M2)/(B1-B2) : " ,"s");     


if ShipCode == "S1"

    fprintf(" Ship code: %s. \n Length: %.2f meters. \n Beam(Width): %.2f meters. \n " +...
        " Draft(Depth): %.2f meters." , ShipCode,287.36, 30.11,10.09);

    disp ("Please proceed to the old Panama Lock.");


   
elseif ShipCode == "S2"

    fprintf(" Ship code: %s. \n Length: %.2f meters. \n Beam(Width): %.2f meters. \n " +...
        " Draft(Depth): %.2f meters." , ShipCode,289.56, 30.76,10.61);

    disp ("Please proceed to the old Panama Lock.");

elseif ShipCode == "M1"

    fprintf(" Ship code: %s .\n Length: %.2f meters. \n Beam(Width): %.2f meters. \n " + ...
        " Draft (Depth): %.2f meters." , ShipCode,290.28, 31.35,11.41 );

       disp ("Please proceed to the old Panama Lock.");

 elseif ShipCode == "M2"

    fprintf(" Ship code: %s .\n Length: %.2f meters. \n Beam(Width): %.2f meters. \n " + ...
        " Draft (Depth): %.2f meters." , ShipCode,294.12, 32.2,12.6 );

       disp ("Please proceed to the old Panama Lock."); 

elseif ShipCode == "B1"

    fprintf(" Ship code: %s. \n Length: %.2f meters. \n Beam(Width): %.2f meters.\n " + ...
        " Draft(Depth): %.2f meters. \n" + ...
        "It is large enough to pass through the new locks of the Panama Canal. " , +...
        ShipCode, 299.98,48.25,15.5);

        disp ("Please proceed to the new Panama Lock.");


    elseif ShipCode == "B2"

        fprintf(" Ship code: %s. \n Length: %.2f meters. \n Beam(Width): %.2f meters. \n" + ...
            " Draft(Depth): %.2f meters. \n " +...
            "It is large enough to pass through the new locks of the Panama Canal." , +...
            ShipCode,399,54 ,16);

        disp ("Please proceed to the new Panama Lock.")

end





VoyageDirectiions = menu("Select the route: " ,...
    "From Atlantic side to Pacific side", ...
    "From Pacific side to Atlantic side");

switch VoyageDirectiions
    case 1
        
        if ShipCode == "S1" || ShipCode == "S2" || ShipCode == "M1" || ShipCode == "M2" 

            fprintf("Your voyage will be from the Atlantic side to the Pacific side through Gatun lock.");

             % Define the coordinates of the lock (e.g., Gatun Lock)
            lock_lat = 9.2657;  % Latitude
            lock_lon = -79.9288; % Longitude
            
            % Create a Google Maps link
            google_maps_url = sprintf('https://www.google.com/maps?q=%.4f,%.4f', lock_lat, lock_lon);
            
            % Open the link in the default web browser
            web(google_maps_url);

               run("SmallShipsAtlanticToPacifict.m");

        elseif ShipCode == "B1" || ShipCode =="B2"

            fprintf("Your voyage will be from the Atlantic side to the Pacific side through Agua Clara lock.");
            
             % Define the coordinates of the lock (e.g., Agua Clara Lock)
            lock_lat = 9.0932;  % Latitude
            lock_lon = -79.7239; % Longitude
            
            % Create a Google Maps link
            google_maps_url = sprintf('https://www.google.com/maps?q=%.4f,%.4f', lock_lat, lock_lon);
            
            % Open the link in the default web browser
            web(google_maps_url);


            run("BigShipsAtlanticToPacifict.m");
        end


    case 2

        if ShipCode == "S1" || ShipCode == "S2" || ShipCode == "M1" || ShipCode == "M2"

            fprintf("Your voyage will be from the Atlantic side to the Pacific side through Miraflores lock.");

            % Define the coordinates of the lock (e.g., Miraflores Lock)
            lock_lat = 8.9811;  % Latitude
            lock_lon = -79.5527; % Longitude
            
            % Create a Google Maps link
            google_maps_url = sprintf('https://www.google.com/maps?q=%.4f,%.4f', lock_lat, lock_lon);
            
            % Open the link in the default web browser
            web(google_maps_url);


               run("SmallShipsPacificToAtlantic.m");

                 elseif ShipCode == "B1" || ShipCode =="B2"

                     fprintf("Your voyage will be from the Atlantic side to the Pacific side through Cocoli lock.");

                     % Define the coordinates of the lock (e.g., Cocoli Lock)
                    lock_lat = 8.9464;  % Latitude
                    lock_lon = -79.5871; % Longitude
                    
                    % Create a Google Maps link
                    google_maps_url = sprintf('https://www.google.com/maps?q=%.4f,%.4f', lock_lat, lock_lon);
                    
                    % Open the link in the default web browser
                    web(google_maps_url);

                    run("BigShipsPacificToAtlantic.m");
        end

    otherwise

        fprintf("Invalid choice.");

end




