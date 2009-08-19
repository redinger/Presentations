Feature: Device listing
  As a registered user
  I want to view the devices page
  So that I can see all the devices

  Scenario: View Devices Page
    Given I am logged in
    And I have a device
    When I go to the devices index page
    Then I should see the device