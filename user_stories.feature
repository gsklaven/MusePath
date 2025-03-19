Feature: Route display
The system must calculate and display the suggested route to the selected point.

  Scenario: User selects a point on the map
    Given the user is on the museum map screen
    When the user selects a point on the map
    Then the system calculates the route to the point
    And the system displays it to the user

  Scenario: User selects multiple point on the map
    Given the user is on the museum map screen
    When the user selects multiple points on the map
    Then the system calculates the fastest route to the points
    And the system displays it to the user

  Scenario: User selects a point on the map and then changes it
    Given the user is on the museum map screen
    When the user selects a point on the map
    And the user changes the point
    Then the system recalculates the route to the new point
    And the system displays it to the user

  Scenario: User selects a point on the map and then cancels it
    Given the user is on the museum map screen
    When the user selects a point on the map
    And the user cancels the selection
    Then the system removes the route from the map

  Scenario: User selects a point on the map and then changes the destination
    Given the user is on the museum map screen
    When the user selects a point on the map
    And the user changes the destination
    Then the system recalculates the route to the new destination
    And the system displays it to the user

  Scenario: User selects a point on the map and then changes the starting point
    Given the user is on the museum map screen
    When the user selects a point on the map
    And the user changes the starting point
    Then the system recalculates the route from the new starting point
    And the system displays it to the user
