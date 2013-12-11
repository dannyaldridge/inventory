Given(/^I go to the add item type page$/) do
	visit "/itemtypes/new"
end

Then(/^I should be redirected to that teams page$/) do
	expect(page.current_path).to eq "/teams/1"
end