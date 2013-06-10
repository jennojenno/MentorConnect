Given(/^I am already registered as "(.*?)"$/) do |email|
  @user = User.new(:email => "mentor1@gmail.com", :password => "password", :password_confirmation => "password")
  @user.save!
  visit '/users/sign_in'
  fill_in 'Email', :with => @user.email
  fill_in 'Password', :with => @user.password
  click_button 'Sign in'
end

Given(/^I am on the profile page$/) do
  visit user_path(@user)
end

When(/^I click "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be able to see the Lesson form via Ajax$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see a Category field$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see a Title field$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see checkboxes for Online and In Person$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see a text box for description$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I choose the category "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I fill in the title "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I click the checkbox for In Person$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I fill in the description box with "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see the success page$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be redirected to my profile page$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see the course "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end