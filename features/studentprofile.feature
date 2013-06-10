Feature: Student Profile

  As a student
  I want to setup my profile and skills

  Scenario: A student defines what they can offer 
    Given I am on the profile page
    And I have already registered as "student1@gmail.com"
    When I click "Add an Offering"
    Then I should see an Offering form text box
    When I fill in the text box with an offer
    And when I click "Add"
    Then the page should update with the offer with Ajax