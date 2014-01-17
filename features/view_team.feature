Feature: View teams on the sytem
	As a registered user
	I want to be able to view a specific team
	so that I can allocate items to them

	Scenario: View team
		Given I am logged in
		And I have created a team
		Then I should be able to go to that teams page