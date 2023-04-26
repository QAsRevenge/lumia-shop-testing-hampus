Feature: Check that total is correct in cart with one or more of the same item

  Background:
    Given that I am on the start page

  Scenario: Adding "1" "Bordslampa" to the cart
    And that I have searched for "Bordslampa"
    When I click the buy button "1" time
    Then "1" "Bordslampa" should be added to the cart
    And total should be "6900"

  Scenario: Adding "2" "Bordslampa" to the cart
    And that I have searched for "Bordslampa"
    When I click the buy button "2" time
    Then "2" "Bordslampa" should be added to the cart
    And total should be "13800"

  Scenario: Adding "1" "Taklampa" to the cart
    And that I have searched for "Taklampa"
    When I click the buy button "1" time
    Then "1" "Taklampa" should be added to the cart
    And total should be "2500"

  Scenario: Adding "2" "Taklampa" to the cart
    And that I have searched for "Taklampa"
    When I click the buy button "2" time
    Then "2" "Taklampa" should be added to the cart
    And total should be "5000"

  Scenario: Adding "1" "Lampett" to the cart
    And that I have searched for "Lampett"
    When I click the buy button "1" time
    Then "1" "Lampett" should be added to the cart
    And total should be "4000"