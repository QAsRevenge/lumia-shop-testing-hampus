import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
let searchedFor;



Given('that I searched for {string}', (searchTerm) => {
  searchedFor = searchTerm;
  cy.get('#search')
  .type(searchedFor)
});

When('I click buy {string} time', (clickTimes) => {
  for (let i = 1; i <= +clickTimes; i++) {
    cy.log("searchedFor", searchedFor);
    // find h2 that contains the product we have searched for
    cy.get('.product h2').contains(searchedFor)
      // find its product div
      .parents('.product')
      // find the buy button inside the product div
      .find('button').contains('Köp')
      // and click the button
      .click();
  }
});

Then('{string} {string} should add to the cart', (quantity, productName) => {
    cy.get('#cart li')
    .contains(productName)
    // and also contains the correct quantity
    .contains(quantity + 'st')
    // we should have 1 element
    .should('have.length', quantity);
});

Then('total should be {string}', (total) => {
  cy.get('.total span')
  .contains(total)
});

