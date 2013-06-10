Feature: Registration

  As a visitor
  I want to become a mentor or student 

  Background: 
    Given I am on the homepage
    And I am logged in as "mentor1@gmail.com"

  Scenario: A mentor fills out an Offering form
    Given a mentor is on the Offering form page
    Then the sign up page should say "Become a Mentor"
    And the page should have a "What do you want to teach" field

  Scenario: A visitor wants to become a Student
    Given a visitor clicks the Student button
    Then the sign up page should say "Become a Student"
