Feature: Everything around the login of the site
  Scenario: Good credential, we reach the home page
    Given a valid user
    When I go to the login page
    And I fill in the following:
      |Email|test001@example.com|
      |Password|12345678|
    And I press Log in
    Then I should see Signed in successfully.