Feature: New available command
  As a registered user
  I want to create a new available comamnd
  So that I can send commands

  Scenario: Create new available command
    Given I am logged in
    When I go to the available commands index page
    And I follow "New"
    And I fill in "Name" with "My Command"
    And I fill in "Command" with "command_string"
    And I press "Create"
    Then I should see the available command
