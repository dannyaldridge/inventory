require_relative '../support/env'

Given (/^I am logged in$/) do
  @user = User.create(name: "James", password: "123456", password_confirmation: "123456")
  visit "/sessions/new"
  fill_in "Name", with: @user.name
  fill_in "Password", with: "123456"
  click_button "Log in"
end

Given (/^I go to the new user page$/) do
  visit "/users/new"
end

When (/^I click "(.*?)"$/) do |item|
  click_on(item)
end

When (/^I click the "(.*?)" button$/) do |item|
  click_button(item)
end

Then(/^I should be redirected to the homepage$/) do
  expect(page.current_path).to eq "/"
end

Then(/^I should be at the new user page$/) do
  expect(page.current_path).to eq "/users/new"
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


