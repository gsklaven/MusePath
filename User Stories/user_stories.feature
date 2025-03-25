Feature: Display and Calculate Route
  The system calculates and displays the suggested route and the estimated arrival time to the selected destination.

# Scenario: User selects a destination on the map
#    Given the user is on the museum map screen
#    When the user selects a destination
#    Then the system displays information about the destination

  Scenario: User selects a destination and the system calculates the route
    Given the user has selected a destination
    When the user selects "Navigate"
    Then the system calculates the route to the destination
    And the system calculates the arrival time to the destination
    And the system displays the calculated route on the map
    And the system displays the estimated arrival time

  Scenario: User selects multiple stops on the map
    Given the user is on the museum map screen
    When the user adds multiple stops on the map
    Then the system suggests the optimal order to visit the points based on time, distance and crowdedness
    And the system calculates the fastest route to the destination through all the stops
    And the system displays the calculated route on the map
    And the system displays the calculated arrival time to the final destination

  Scenario: User cancels navigation
    Given the user has selected "Navigate" to a destination
    When the user cancels the navigation
    Then the system removes the route from the map
    And the system returns to the museum map screen

  Scenario: User creates a custom route
    Given the user is on the museum map screen
    When the user selects a destination
    And the user changes the starting point
    Then the system calculates the custom route based on the specific starting point and destination

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
    And the system allows the user to try again or select a different destination

  Scenario: User loses GPS signal during navigation
    Given the user is following a route on the map
    When the GPS signal is lost
    Then the system notifies the user of the issue
    And the system pauses navigation until the connection is restored

Feature: Exhibit Traffic
The user must be able to see real-time visitor traffic at an exhibit.

  Scenario: User views real-time traffic at an exhibit
    Given the user is viewing information about an exhibit
    When the user checks the real-time traffic status
    Then the system displays the current visitor traffic level
    And the system provides additional information (e.g., wait time, crowd density)

  Scenario: User receives a notification about crowded exhibit
    Given the user is approaching an exhibit
    Then if the exhibit is crowded
    And the system notifies the user of the crowd level
    And the system suggests alternative exhibits or visiting times

  Scenario: User checks traffic at multiple exhibits
    Given the user has selected multiple exhibits
    And the user selects a route to visit them
    When the user checks the traffic status at each exhibit
    Then the system displays the visitor traffic level at each exhibit
    And the system suggests the optimal order to visit the exhibits based on traffic

  Scenario: User receives a notification when an exhibit becomes less crowded
    Given the user has marked an exhibit as "interested" while it was above 80% visitor capacity
    Then if the real-time visitor density at the exhibit drops below 50% of its maximum capacity
    And the system sends a notification informing the user that the exhibit is now less crowded
    And the system suggests an estimated wait time if applicable
    And the system provides a "Navigate Now" option to guide the user there
