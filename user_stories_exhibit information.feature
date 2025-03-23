Feature: Exhibit Information
The user can serach for exhibits and view information about them.

  Scenario: User searches for an exhibit in the map
    Given the user is in the museum map screen
    And the user selects an exhibit from the map
    Then the system displays information about the exhibit

  Scenario: User searches for an exhibit by category
    Given the user is in the museum map screen
    When the user selects a category (e.g., "Art", "History")
    Then the system displays a list of exhibits in that category

  Scenario: User searches for an exhibit by keyword
    Given the user is in the museum map screen
    When the user enters a keyword in the search bar
    Then the system displays a list of exhibits related to the keyword

  Scenario: User searches for an exhibit that does not exist
    Given the user is in the museum map screen
    When the user enters a non-existing exhibit name in the search bar
    Then the system displays a message stating "No results found"
    And the system suggests checking the spelling or trying a different search term

  Scenario: User searches for exhibit information in offline mode
    Given the user is in offline mode
    When the user searches for exhibit information
    Then the system displays pre-downloaded exhibit information
    And the system allows the user to view exhibit details

  Scenario: User views exhibit information
    Given the user is viewing information about an exhibit
    When the user selects "More Details"
    Then the system displays additional information about the exhibit
    And the system allows the user to listen to an audio transcript of the exhibit