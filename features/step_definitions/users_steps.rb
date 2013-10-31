Given (/^I go to the sign up page$/) do
  visit path_to(new)
end

When (/^I fill in "(.*?)" for "(.*?)"$/) do |james, login|
  fill_in(name, :with => James)
end

When (/^I fill in "(.*?)" for "(.*?)"$/) do |james, login|
  fill_in(password, :with => 123456)
end

When (/^I fill in "(.*?)" for "(.*?)"$/) do |james, login|
  fill_in(confirm_password, :with => 123456)
end

When (/^I click "(.*?)"$/) do |signup|
  click_button(sign_up)
end

Then (/^I should see "(.*?)"$/) do |thanks|
end

Then(/^I should be redirected to the "(.*?)" page$/) do |teams|
end

# Given (/^I go to the log in page$/) do
#   # visit path_to(login)
# end

# When (/^I fill in "(.*?)" for "(.*?)"$/) do |james, login|
#   # fill_in(name, :with => James)
# end

# When (/^I am already a created user$/) do

# end

# When (/^I click "(.*?)"$/) do |login|
#   # click_button(log_in)
# end

# Then (/^I should see "(.*?)"$/) do |thanks|
# end

# Then(/^I should be redirected to the "(.*?)" page$/) do |teams|
# end

# Given (/^I am logged in as "(.*?)"$/) do |arg|
# end

# When (/^I click "(.*?)"$/) do |logout|
#   # click_button(log_out)
# end

# Then(/^I should be logged out and redirected to the "(.*?)"page$/) do |logout|
# end
