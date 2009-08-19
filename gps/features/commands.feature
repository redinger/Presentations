Feature: New Command
  As a registered user
  I want to create a new comamnd
  So that I can talk to my device

  Scenario: Create command
    Given I am logged in
    And I have an available command
    And I have a device
    When I go to the commands index page
    And I follow "New Command"
    And I select "My Device" from "Device"
    And I select "My Command" from "Command"
    And I press "Send"
    Then I should see the command
