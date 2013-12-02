Feature: Add Teams to system
  As a registered user
  I want to add a team to the system,
  so that I can assign items to specific teams.

Scenario: Add Teams
    Given I am on the teams page
    And I click "Add a new team"
    When I fill in "Junior Kitted" for "Team Name" 
    And I click "Add team"
    Then I should be redirected to the teams page
    And I should see "Team added"

  