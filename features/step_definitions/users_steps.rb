Given (/^I go to the sign up page$/) do
  visit path_to(users_new)
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