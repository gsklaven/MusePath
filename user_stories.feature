Feature: Route Display
  The system must calculate and display the suggested route to the selected point.

  Scenario: User selects a point on the map
    Given the user is on the museum map screen
    When the user selects a point on the map
    Then the system calculates the route to the point
    And the system displays it to the user

  Scenario: User selects multiple points on the map
    Given the user is on the museum map screen
    When the user selects multiple points on the map
    Then the system calculates the fastest route to the points
    And the system displays it to the user

  Scenario: User selects a point on the map and then changes it
    Given the user is on the museum map screen
    When the user selects a point on the map
    And the user changes the selected point before confirming the route
    Then the system recalculates the route to the new point
    And the system displays the updated route to the user

  Scenario: User selects a point on the map and then cancels it
    Given the user is on the museum map screen
    When the user selects a point on the map
    And the user cancels the selection before starting navigation
    Then the system removes the route from the map

  Scenario: User selects a destination and then changes it
    Given the user is on the museum map screen
    When the user selects a destination
    And the user changes the destination after the route is calculated
    Then the system recalculates the route to the new destination
    And the system displays the updated route to the user

  Scenario: User selects a point and then changes the starting point
    Given the user is on the museum map screen
    When the user selects a point on the map
    And the user changes the starting point (e.g., manually selecting a different position or using a different entrance)
    Then the system recalculates the route from the new starting point
    And the system displays the updated route to the user

  Scenario: No route available to the selected point
    Given the user is on the museum map screen
    When the user selects a point that is inaccessible (e.g., an exhibit is closed)
    Then the system notifies the user that no route is available
    And the system suggests the nearest accessible alternative

  Scenario: System fails to calculate a route
    Given the user is on the museum map screen
    When the system encounters an error while calculating the route
    Then the system displays an error message
    And the system allows the user to try again or select a different destination

  Scenario: User loses GPS or internet connection during navigation
    Given the user is following a route on the map
    When the GPS signal is lost or internet connectivity drops
    Then the system notifies the user of the issue
    And the system either switches to an offline mode (if supported) or pauses navigation until the connection is restored
