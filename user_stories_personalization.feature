Feature: Profile Personalization

The system must create a profile for the user based on their preferences.
The user must be able to update their preferences on the profile.
The user must be able to rate exhibits.
The user must be able to add exhibits to their favorites.

Scenario: Successful Profile Setup

    Given the user is on the museum map screen
    And the user is using the app for the first time after registration
    When the system displays "Profile Setup", with a fixed set of questions about cultural and historical preferences
    And the user answers all the displayed questions
    Then the system creates the user's profile

Scenario: User Skips Profile Setup Questions

    Given the user is on the museum map screen  
    And the user is using the app for the first time after registration  
    When the system displays "Profile Setup" with a fixed set of cultural and historical questions  
    And the user does not answer all the displayed questions  
    Then the system prompts the user to complete the setup before proceeding

Scenario: System Fails to Create Profile 

    Given the user has completed answering all profile setup questions  
    When the system attempts to create the user's profile  
    And an unexpected error occurs  
    Then the system displays an error message  
    And prompts the user to try again  

Scenario: User updates preferences on profile

    Given the user has completed the profile setup  
    And the user is on the profile settings screen  
    When the user selects "Update Preferences"  
    Then the system displays a fixed set of questions about cultural and historical preferences
    And the user answers all the displayed questions  
    And the system updates the user's profile

Scenario: User adds exhibit to favourites 

    Given the user is on the information screen of an exhibit  
    When the user selects "Add to Favourites"  
    Then the system updates the user's favourites list  

Scenario: User rates exhibit 

    Given the user is on the information screen of an exhibit  
    When the user selects a rating for the exhibit  
    Then the system updates the user's rating for the exhibit  
    And the system updates the exhibit's average rating accordingly     


Feature: Route Generation

The system must create personalized routes based on the user's provided preferences.

Scenario: Personalized Route Generation

    Given the user has completed the profile set up
    And the user is on the museum map screen
    When the user selects "Personalized Route Generation"
    Then the system generates a route based on the user's saved preferences
    And the system displays the suggested route on the museum map screen

Scenario: User Has No Saved Preferences 

    Given the user has completed the profile setup  
    And the user is on the museum map screen  
    When the user selects "Personalized Route Generation"  
    And no preferences are saved in the profile  
    Then the system informs the user that no personalized route can be generated  
    And suggests updating their preferences first /suggests setting up profile


