require_relative '../support/env'

Given(/^I go to the new teams page$/) do 
	visit "/teams/new"
end

Then(/^I should be redirected to the team page$/) do
	expect(page.current_path).to match /teams\/\d+/
end
