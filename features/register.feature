Feature: Users
	In order to keep the inventory secure and up to date
	people who are able to change the inventory
	must be a created user

	Scenario: Sign up with valid credentials
		Given I go to the sign up page
		When I fill in "James" for "Name"
		And I fill in "123456" for "Password"
    And I fill in "123456" for "Confirm password"
    And I click "Sign up"
    Then I should be redirected to the homepage
    And I should see "Thanks for signing up"

	Scenario: Sign up with invalid credentials
		Given I go to the sign up page
		When I fill in "Danny" for "Name"
		And I fill in "12345" for "Password"
    And I fill in "something else" for "Confirm password"
    And I click "Sign up"
    Then I should render the new user page
    And I should see "Password confirmation doesn't match Password"

  Scenario: Visit homepage not logged in
    Given I am not logged in
    And I visit the homepage
    Then I should be redirected to the login page

