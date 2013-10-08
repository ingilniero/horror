Feature: Home page
  As a user I should be able to visit the application's homepage
  in the domain's root.

  Scenario: New user visiting the site
    Given I visit the site
    Then I should see the home page
