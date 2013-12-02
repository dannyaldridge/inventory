Feature: Create new users
	In order to keep the inventory secure and up to date
	people who are able to change the inventory
	must be a created user

	Scenario:  Create user with valid credentials
	Given I am logged in
	Given I go to the new user page
	When I fill in "Jamesoenuth" for "Name"
	And I fill in "123456" for "Password"
  And I fill in "123456" for "Confirm password"
  And I click "Sign up"
  Then I should see "User created successfully"

	Scenario: Create user with invalid credentials
	Given I am logged in
	Given I go to the new user page
	When I fill in "Danny" for "Name"
	And I fill in "12345" for "Password"
  And I fill in "something else" for "Confirm password"
  And I click "Sign up"
  Then I should render the new user page
  And I should see "Password confirmation doesn't match Password"
