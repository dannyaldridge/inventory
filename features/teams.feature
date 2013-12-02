Feature: Add Teams to system
  As a registered user
  I want to add a team to the system,
  so that I can assign items to specific teams.


  * Team names must be unique 

Scenario: Add Teams
    Given I go to the teams page
    And I click "Add a new team"
    When I fill in "Junior Kitted" for "Team Name" 
    And I click "Add team"
    Then I should be redirected to the teams page
    And I should see "Team added"

Scenario: View Teams
    When I go to the teams page
    Then I should see "Junior Kitted" 