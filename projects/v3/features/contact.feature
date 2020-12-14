Feature: Login form
  Scenario: Sends a contact message
    Given a valid user
    When I am on the signin page
    And I fill in the following:
      |Email|test01@example.com|
      |Password|12345678|
    And I press Log in
    Then I should see Signed in successfully.