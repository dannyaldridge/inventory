Feature: Users
  In order to keep the inventory secure and up to date
  people who are able to change the inventory
  must be a created user 

  Scenario: Visit homepage not logged in
    Given I visit the homepage
    Then I should be redirected to the login page

  Scenario: Log in with valid credentials
  	Given I go to the log in page
    When I am a user named "James" with password "123456"
  	And I fill in "James" for "Name"
	  And I fill in "123456" for "Password"
    And I click the "Log in" button
    Then I should see "Successful login"
    And I should be redirected to the homepage

  Scenario: Log in with invalid credentials
    Given I go to the log in page
    When I fill in "non existant name" for "Name"
    And I fill in "non existant password" for "Password"
    And I click the "Log in" button
    Then I should see "Incorrect user name or password"
    And I should see "Login"

  Scenario: Log out 
  	Given I am logged in as "James"
    And I visit the homepage
  	When I click "Log out"
  	Then I should see "Log in"
    And I should see "You have been logged out"
    And I should be redirected to the login page
