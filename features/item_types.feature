Feature: Add Item Types to system
  As a registered user
  I want to add a item type to the system,
  so that I can assign items to specific item types.


  * Item Types must be unique

Scenario: Add Item Types
    Given I go to a teams page
    And I click "Add a new item type"
    When I fill in "Helmets" for "Item Type" 
    And I click "Add Item Type"
    Then I should be redirected to that teams page
    And I should see "Item Type added"
    And I should see "Helmets"