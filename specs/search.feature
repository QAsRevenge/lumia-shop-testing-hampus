Feature: Search
  As a user I want to able to search for products
  using the search field.

  Background:
    Given that I am on the start page

  Scenario: Searching for products including "s"
    When I enter the string "s" in the searchfield
    Then I should see the product "Bordslampa"
    And I should see the product "Spotlight"

  Scenario: Searching for products including "b"
    When I enter the string "bordslampa" in the searchfield
    Then I should see the product "Bordslampa"

  Scenario: Searching for products including "t"
    When I enter the string "taklampa" in the searchfield
    Then I should see the product "Taklampa"

  Scenario: Searching for products including "l"
    When I enter the string "lampett" in the searchfield
    Then I should see the product "Lampett"

  Scenario: Searching for products including "a"
    When I enter the string "golvlampa" in the searchfield
    Then I should see the product "Golvlampa"
