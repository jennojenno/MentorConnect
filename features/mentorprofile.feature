Feature: Mentor Profile

  As a mentor
  I want to setup my profile #and calendar

  Background: 
    Given I am already registered as "mentor1@gmail.com"

  Scenario: A mentor defines his Offerings
    Given I am on the profile page
    When I click "Add Lessons or Courses"
    Then I should be able to see the Lesson form via Ajax
    And I should see a Category field
    And I should see a Title field
    And I should see checkboxes for Online and In Person
    And I should see a text box for description
    When I choose the category "Sports and Dance"
    And I fill in the title "Tennis lessons"    
    And I click the checkbox for In Person
    And I fill in the description box with "Great tennis lessons"
    And I click "Submit"
    Then I should see the success page
    And I should be redirected to my profile page
    And I should see the course "Tennis lessons"


  # Scenario: A mentor defines his Seekings
  #   Given I am on the profile page
  #   When I click "Add Seeking"
  #   Then I should be able to see the Seeking form
  #   And the Seeking form should have a text box

  # Scenario: A mentor defines his Free Time
  #   Given I am on my Google Calendar page
  #   When I click "Create"
  #   Then I should be able to set a free time for teaching

  # model knows how to calc stuff - model testing 
  # to test that method -- that is unit testing, should be done at start
  # Test with different values 
  # Slots filled go in unit testing 

  # After that is functional testing 
  # If I do a post to something, the controller should create something 