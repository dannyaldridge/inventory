Given(/^I go to the add item type page$/) do
	visit "/itemtypes/new"
end

Then(/^I should be redirected to that item type$/) do
	expect(page.current_path).to eq "/itemtypes/1"
end

Given(/I go to a item type page$/) do
  @itemtype = Itemtype.create(name: "test")  
  visit itemtype_path(@itemtype)
end

Then(/^I should see the teams page$/) do
	visit '/teams/'
end

Then(/^I should not be able to see "(.*?)"$/) do |test|
	page.should_not have_content(test)
end