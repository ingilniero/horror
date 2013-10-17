Feature: Submit an entry

  Scenario: Guest user submitting an entry
    Given I visit the site
    When I submit an entry
    Then I should see the just submitted entry
