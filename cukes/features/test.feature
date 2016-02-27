Feature: Promises demo
  As a user
  I want to check out simple promise handling
  so that I know how to use promises

  Scenario: Navigating to the simple promises page
    Given that I'm at the promises homepage
    When I click on Simple Handling
    Then I should see the simple handling page

  Scenario: creating a simple promise that resolves
    Given that I'm on the Simple Handling page
    When I fill "message-input" with "This is a test."
    And I fill "delay-input" with "1"
    And I click the set timeout button
    Then I should see a toast with message "This is a test."
