Given(/^I have created a team$/) do
	expect (Team).count > 0
end

When(/^I go to the teams path$/) do
	visit '/teams/'
end
