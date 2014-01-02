Feature: Add Item Types to system
  As a registered user
  I want to add a item type to the system,
  so that I can assign items to specific item types.


  * Item Types must be unique

Scenario: Add Item Types
    Given I go to the add item type page
    And I fill in "Helmets" for "Item Type" 
    When I click "Add Item Type"
    Then I should be redirected to that item type
    And I should see "Item Type added"
    And I should see "Helmets"

Scenario: Delete Item Types
  Given I go to a item type page
  When I click "Delete Item Type"
  Then I should see the teams page
  And I should not be able to see "Test"