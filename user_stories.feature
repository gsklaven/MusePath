Feature: Route Display
  The system calculates and displays the suggested route to the selected destination.

  Scenario: User selects a destination on the map
    Given the user is on the museum map screen
    When the user selects a point on the map
    Then the system calculates the route to the point
    And the system displays the calculated route on the map

  Scenario: User selects multiple points on the map
    Given the user is on the museum map screen
    When the user selects multiple points on the map
    Then the system calculates the fastest route to the points
    And the system suggests the optimal order to visit the points based on time and distance
    And the system displays the calculated route on the map

  Scenario: User selects a point on the map and then changes it
    Given the user is on the museum map screen
    When the user selects a point on the map
    And the user changes the selected point before confirming the route
    Then the system recalculates the route to the new point
    And the system displays the updated route on the map

  Scenario: User selects a point on the map and then cancels it
    Given the user is on the museum map screen
    When the user selects a point on the map
    And the user cancels the selection before starting navigation
    Then the system removes the route from the map

  Scenario: User selects a point and then changes it
    Given the user is on the museum map screen
    When the user selects a point on the map
    And the user changes the point after the route is calculated
    Then the system recalculates the route to the new point
    And the system displays the updated route on the map

  Scenario: User selects a point and then changes the starting point
    Given the user is on the museum map screen
    When the user selects a point on the map
    And the user changes the starting point (e.g., manually selecting a different position or using a different entrance)
    Then the system recalculates the route from the new starting point
    And the system displays the updated route on the map

  Scenario: No route available to the selected point
    Given the user is on the museum map screen
    When the user selects a point that is inaccessible (e.g., an exhibit is closed)
    Then the system notifies the user that no route is available
    And the system suggests the nearest accessible alternative

  Scenario: System fails to calculate a route
    Given the user is on the museum map screen
    And the user has selected a point on the map
    Then if the system encounters an error while calculating the route
    And the system displays an error message
    And the system allows the user to try again or select a different point

  Scenario: User loses GPS or internet connection during navigation
    Given the user is following a route on the map
    Then if the GPS signal is lost or internet connectivity drops
    And the system notifies the user of the issue
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

