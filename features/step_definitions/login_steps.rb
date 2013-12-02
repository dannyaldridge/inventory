require_relative '../support/env'

Given (/^I am logged in as "James"$/) do 
  User.create(name: "James", password: "123456", password_confirmation: "123456")
  visit "/sessions/new"
  fill_in "Name", with: "James"
  fill_in "Password", with: "123456"
  click_button "Log in"
end
