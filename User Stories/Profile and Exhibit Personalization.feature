Feature: Profile Personalization

    Scenario: Successful Profile Setup
        Given the user is on the museum map screen
        And the user is using the app for the first time after registration
        When the system displays a promt suggesting that the user completes their profile setup, by answering a fixed set of questions about cultural and historical preferences
        Then the user selects "Yes, i would love to!"
        And the user answers all the displayed questions
        And the system creates the user's profile
        And the system returns to the museum map screen

    Scenario: User Skips Profile Setup Questions
        Given the user is on the museum map screen  
        And the user is using the app for the first time after registration  
        When the system displays a prompt suggesting that the user completes their profile setup, by answering a fixed set of questions about cultural and historical preferences
        Then the user selects "No, thank you"
        And the system returns to the museum map screen

    Scenario: System Fails to Create Profile 
        Given the user has completed answering all profile setup questions  
        When the system attempts to create the user's profile  
        And an unexpected error occurs  
        Then the system displays "Unable to create profile"
        And prompts the user to try again  

    Scenario: User updates preferences on profile
        Given the user has completed the profile setup  
        And the user is on the profile settings screen  
        When the user selects "Change my Preferences"  
        Then the system displays a fixed set of questions about cultural and historical preferences
        And the user answers all the displayed questions  
        And the system updates the user's profile
        And the system returns to the museum map screen

    Scenario: User adds exhibit to favourites 
        Given the user is on the information screen of an exhibit  
        When the user selects the dedicated button for adding to favourites  
        Then the system updates the user's favourites list  

    Scenario: User rates exhibit 
        Given the user is on the information screen of an exhibit  
        When the user selects a rating for the exhibit  
        Then the system updates the user's rating for the exhibit  
        And the system updates the exhibit's average rating accordingly     



