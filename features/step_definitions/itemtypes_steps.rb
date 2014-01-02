Given(/^I go to the add item type page$/) do
	visit "/itemtypes/new"
end

Then(/^I should be redirected to that item type$/) do
	expect(page.current_path).to eq "/itemtypes/1"
end

Given(/^I go to the item type page$/) do
	visit "/itemtypes/5"
end