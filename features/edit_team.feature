Feature: Edit teams


Scenario:  Edit teams
	Given I am logged in
	And I go to a team page
	And I click "Edit Team"
	When I fill in "rename" for "Team Name"
	When I click "Update"
	Then I should see the team page

	
	