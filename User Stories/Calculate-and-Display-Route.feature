Feature: Display and Calculate Route
    The system calculates and displays the suggested route and the estimated arrival time to the selected destination.

    Scenario: User selects a destination and the system calculates the route
        Given the user has selected a destination
        When the user selects "Navigate"
        Then the system calculates the route to the destination
        And the system calculates the arrival time to the destination
        And the system displays the calculated route on the map
        And the system displays the directions to the destination
        And the system displays the calculated arrival time to the final destination

    Scenario: User selects the dedicated button for modifying the route
        Given the user has selected a destination
        When the user selects the dedicated button for modifying the route
        Then the system displays two options for the user (add stop or change starting point)
        And the user selects their preferred option

    Scenario: User selects multiple stops on the map
        Given the user has selected to modify the route
        When the user selects to add more stops
        Then the system displays two options for the user (select on the map or use the search bar, these options can happen simultaneously)
        And the user selects the stops

    Scenario: System calculates the route with multiple stops
        Given the user has selected multiple stops
        When the user selects "Navigate"
        Then the system calculates the route to the destination with all selected stops (with the optimal order to visit the points based on time, distance and crowdedness)
        And the system calculates the arrival time to the destination
        And the system displays the calculated route on the map
        And the system displays the directions to the destination
        And the system displays the calculated arrival time to the final destination

    Scenario: User changes the starting point
        Given the user has selected to modify the route
        When the user selects to change the starting point
        Then the system displays two options for the user (select on the map or use the search bar)
        And the user selects the starting point
        Then the system calculates the custom route based on the specific starting point and destination

    Scenario: System calculates route with custom starting point
        Given the user has selected a starting point
        When the user selects "Navigate"
        Then the system calculates the route to the destination
        And the system calculates the arrival time to the destination
        And the system displays the calculated route on the map
        And the system displays the directions to the destination
        And the system displays the calculated arrival time to the final destination

    Scenario: User cancels navigation
        Given the user has selected "Navigate" to a destination
        When the user cancels the navigation by selecting the dedicated button
        Then the system stops navigation to the destination
        Then the system removes the route from the map
        And the system returns to the museum map screen

    Scenario: Inaccessible destination
        Given the user is on the museum map screen
        When the user selects a destination that is inaccessible (e.g., an exhibit is closed)
        Then the system notifies the user that no route is available
        And the system suggests an alternative destination
        And the system suggests different visiting times

    Scenario: System fails to calculate a route
        Given the user is on the museum map screen
        And the user has selected "Navigate" to a destination
        When the user requests navigation to that point
        But the system fails to calculate a route within 5 seconds
        Then the system displays an error message stating "Unable to calculate route at this time"
        And the system suggests troubleshooting steps (e.g., "Check your internet connection or try another destination")
        And the system allows the user to try again

    Scenario: User loses GPS signal during navigation
        Given the user is following a route on the map
        When the GPS signal is lost
        Then the system notifies the user of the issue
        And the system pauses navigation until the connection is restored

    Scenario: User checks traffic levels during route planning
        Given the user is planning a route with multiple destinations
        When the user checks the real-time traffic levels for each destination
        Then the system displays the current traffic level at each destination
        And the system suggests the optimal order to visit the destinations based on traffic and estimated wait times
        And the system updates the calculated route and arrival times accordingly.

    Scenario: Personalized Route Generation
        Given the user has completed the profile setup
        And the user is on the museum map screen
        When the user selects "Generate Personalized Route"
        Then the system generates a route based on the user's saved preferences
        And the system displays the suggested route on the museum map screen

    Scenario: User Has No Saved Preferences 
        Given the user has not completed the profile setup  
        And the user is on the museum map screen  
        When the user selects "Generate Personalized Route"  
        Then the system informs the user that no personalized route can be generated  
        And suggests completing their profile setup
