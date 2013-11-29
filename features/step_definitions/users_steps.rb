require_relative '../support/env'

Given (/^I go to the sign up page$/) do
  visit "/users/new"
end

When (/^I click "(.*?)"$/) do |sign_up|
  click_button(sign_up)
end

Then(/^I should be redirected to the homepage$/) do
  expect(page.current_path).to eq "/"
end

Then(/^I should render the new user page$/) do
  expect(page.current_path).to eq "/users"
end

Given (/^I go to the log in page$/) do
  visit "/sessions/new"
end

Given (/^I visit the homepage$/) do
  visit root_path
end

Then(/^I should be redirected to the login page$/) do
  expect(page.current_path).to eq "/sessions/new"
end

When(/^I am a user named "(.+)" with password "(.+)"$/) do |name, password|
  User.create(name: name, password: password, password_confirmation: password)
end 


