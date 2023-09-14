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

