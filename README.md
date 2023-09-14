# WRO-Competition

Our code focuses on the development of a MATLAB-based system that streamlines ship navigation in the Panama Canal. The system comprises several components aimed at providing accurate guidance to ships and minimizing congestion. Here are the key points:

## 1. Ship Registration and Identification:
   - Ships need to go through a booking process to access the canal's services.
   - Each ship is assigned a unique identification code for interacting with the system.
   - The system provides ship-related information such as dimensions and specifications.
   - Ships' details, including length, width, and depth, are presented for comprehensive guidance.

## 2. Determining the Appropriate Lock:
   - The system guides ships to the appropriate lock to ensure efficient traffic management.
   - Gatun lock is recommended for ships traveling from the Atlantic to the Pacific.
   - Miraflores lock is recommended for ships traveling from the Pacific to the Atlantic.
   - Neo Panamax category ships have designated locks: Agua Clara (Atlantic to Pacific) and Cocoli (Pacific to Atlantic).
   - Real-time GPS guidance is provided to ships for precise direction to the specified lock.

## 3. Navigational Guidance and Waiting Areas:
   - Ships input precise coordinates obtained through the Automatic Identification System (AIS).
   - The system determines the ship's positional ranking within the canal queue.
   - "Waiting areas" positioned before the initial gate serve as buffer zones to prevent congestion.
   - Ships reduce their speed in the waiting areas based on the presence of other ships.
   - A speed reduction calculator determines the appropriate speed for each ship to synchronize movement.

## 4. Collision Avoidance and Priority System:
   - A priority system allocates precedence based on ship booking slots to ensure an efficient flow of traffic.
   - A collision detection algorithm continuously assesses time, distance, positions, speeds, and trajectories of ships.
   - Real-time warnings and interventions are triggered to avoid potential collision scenarios.
   - Specific conditions govern ship movements, such as entering gates without slowing down when no other vessels are present.

## 5. Collision Time and Distance Calculation:
   - A code calculates collision times and distances based on ship-specific data.
   - Ships can predict potential collision scenarios and make navigation decisions accordingly.



The number of ships allowed to enter the gates simultaneously is determined based on the size of each ship. For small ships meeting specific size criteria, typically around 15 meters wide, 145 meters long, and 5.5 meters deep, simultaneous entry into the gates is permitted. However, for larger ships that do not meet these size criteria, they are required to enter the gates individually, following their designated booking slots. This approach ensures effective management of ship traffic within the Panama Canal, prioritizing both safety and operational efficiency. 

<img width="264" alt="image" src="https://github.com/alaaanann/WRO-Competition/assets/72482375/cb15602e-bf49-49b2-8400-3bc6d9b28f84">

In the case of a single large ship, it will be granted autonomous entry into the canal without the presence of other vessels.

<img width="272" alt="image" src="https://github.com/alaaanann/WRO-Competition/assets/72482375/03782e3c-51fa-4d35-a493-d2013ebc0dd0">

When there are two small ships, they will be allowed to enter the canal simultaneously, ensuring efficient passage and minimizing delays.


<img width="263" alt="image" src="https://github.com/alaaanann/WRO-Competition/assets/72482375/602fd267-29e4-42f4-8eda-674642b3a7e8">


<img width="269" alt="image" src="https://github.com/alaaanann/WRO-Competition/assets/72482375/2be95f01-77c0-4ea1-9f46-d07767b8d01c">

