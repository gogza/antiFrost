Feature: First impressions.
  In order to give great first impression
  As a first time user
  I want to display pertinent info on the home page
  
  Scenario: Website display its name
    When I go to the home page
    Then I should see "antiFrost"
    
  Scenario: Display the forecast low for tonight
    Given wunderground thinks it will "7" degrees centigrade tonight
    When I go to the home page
    Then I should see "Tonight's forecast low is 7"
    
  
