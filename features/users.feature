Feature: Users
	In order to keep the inventory secure and up to date
	people who are able to change the inventory
	must be a created user

	Scenario: Sign up
		Given I go to the sign up page
		When I fill in "James" for "Login"
		And I fill in "123456" for "Password"
    And I fill in "123456" for "Confirm Password"
    And I click "Sign up"
    Then I should see "Thanks for signing up"
    And I should be redirected to the "Teams" page

  # Scenario: Log in 
  # 	Given I go to the log in page
  # 	When I fill in "James" for "Login"
	 #  And I fill in "123456" for "Password"
  #   And I am already a created user
  #   And I click "Log in"
  #   Then I should see "You are logged in as James"
  #   And I should be redirected to the "Teams" page

  # Scenario: Log out 
  # 	Given I am logged in as "James"
  # 	And I click "Log out"
  # 	Then I should be logged out and redicted to the "Log in" page