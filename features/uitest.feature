Feature: Uitest Testing

  Scenario: Test scenario for Uitest
    Given I have loaded the Uitest page
    When I enter some text and click the search button
    Then I should see my search results returned