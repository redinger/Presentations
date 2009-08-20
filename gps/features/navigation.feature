Feature: Navigation
  As a registered user
  I want to navigate
  So that I can use the site

  Scenario: User navigates site
    Given I am logged in
    And I am on the devices index page
    When I follow "Commands"
    Then I should be on the commands index page
    When I follow "Readings"
    Then I should be on the readings index page
    When I follow "Available Commands"
    Then I should be on the available commands index page
    When I follow "Logout"
    Then I should be on the new user session page
