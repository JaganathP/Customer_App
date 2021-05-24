Feature: Validate Home and Dashboard Page of the Customer Application

@sanity
Scenario Outline: Validate Home and the Dashboard Page
  Given I launch the URL
   Then I enter "<username>"
   Then I click on Submit button
    And I should land on the Dashboard page
Examples:
|username                |
|Jaganath Padmanaban     |


@sanity
Scenario Outline: Validate the Dashboard with Username Name and Current Date
  Given I launch the URL
   Then I enter "<username>"
   Then I click on Submit button
    And I should land on the Dashboard page
   Then I validate entered "<username>" on the Dashboard page
   Then I validate the date stamp on the Dashboard page
Examples:
|username                |
|Jaganath Padmanaban     |


@sanity
Scenario Outline: Validate the Customer details page in the Dashboard
  Given I launch the URL
   Then I enter "<username>"
   Then I click on Submit button
    And I should land on the Dashboard page
   Then I validate the Americas Inc customer details page
   Then I validate the Caribian Airlnis customer details page
   Then I validate the MacroSoft customer details page
   Then I validate the United Brands customer details page
   Then I validate the Bananas Corp customer details page
   Then I validate the XPTO.com customer details page
Examples:
|username                |
|Jaganath Padmanaban     |