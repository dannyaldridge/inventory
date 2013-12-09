Feature: View teams on the sytem
	As a registered user
	I want to be able to view all the teams
	so that I can allocate items to them

	Scenario: View team list
		Given I am logged in
		And I have created a team
		When I go to the teams path
		Then I should see "Team Name"
