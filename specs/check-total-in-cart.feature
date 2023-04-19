Feature: Check that total is correct in cart with one or more of the same item

  Scenario: Adding "1" "Bordslampa" to the cart
    Given that I am on the start page
    And that I have searched for "Bordslampa"
    When I click the buy button "1" time
    Then "1" "Bordslampa" should be added to the cart
    And total should be "6900"

  Scenario: Adding "2" "Bordslampa" to the cart
    Given that I am on the start page
    And that I have searched for "Bordslampa"
    When I click the buy button "2" time
    Then "2" "Bordslampa" should be added to the cart
    And total should be "13800"