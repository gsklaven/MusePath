Feature: Exhibit Navigation
Simulate the user's experience of navigating the museum and interacting with exhibits.

Scenario: User navigates to an exhibit
  Given the user is on the museum map screen
  When the user selects an exhibit
  Then the system calculates the route to the exhibit
  And the system displays the route on the map

Scenario: User views exhibit information
  Given the user is viewing an exhibit
  When the user selects the exhibit information button
  Then the system displays information about the exhibit

  
