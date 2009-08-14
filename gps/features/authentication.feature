Feature: Authentication
  As a registered user
  I want to login
  So that I can use the site

  Scenario: User Logs In
    Given I am a user
    And I am on the homepage
    When I fill in "Email" with "obama@whitehouse.gov"
    And I fill in "Password" with "password"
    And I press "Login"
    Then I should be on the devices index page
