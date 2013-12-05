Given(/^I go to a teams page$/) do
	visit "/teams/#"
end

Then(/^I should be redirected to that teams page$/) do
	expect(page.current_path).to eq "/teams/1"
end