Feature: Add Items to Item Types
  As a registered user
  I want to add a item tp an item type
  so that they can be easily accesed


  * Items must be unique

Scenario: Add Items
    Given I go to the add item page
    And I fill in "Riddel" for "Name"
    And I fill in "Medium" for "Size" 
    And I fill in "RM1" for "Label"
    And I fill in "Gold helmet" for "Description"
    And I fill in "1" for "Quantity"
    And I select "3/1/14" for "purchase date"
    And I select "Helmet" for "Item Type"
    And I select "Kitted" for "Team"
    When I click "Add Item"
    Then I should be taken to that item types page
    And I should see "Item added"
    And I should see "Riddel"