Given(/I go to a team page$/) do
  @team = Team.create(name: 'test')
  visit team_path(@team)
end

Then(/^I should see the teams page$/) do
	visit '/teams/'
end

Then(/^I should not be able to see "(.*?)"$/) do |test|
	page.should_not have_content(test)
end
