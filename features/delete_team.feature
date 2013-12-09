Feature: Delete teams

*Deleting a team should not delete the items assosiated with it

Background:
	Given a team exists

Scenario:  Delete teams
	Given I am logged in
	And I go to a team page
	When I click "Delete Team"
	Then I should see the teams page
	And I should not see the team


