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

