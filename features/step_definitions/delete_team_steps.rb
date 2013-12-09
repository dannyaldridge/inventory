Given(/^a team exists$/) do
	name = "Junior"
	Team.new(:name => name).save!
end

Given(/I go to a team page$/) do
	# visit ('/teams/1')
end