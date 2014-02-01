require_relative '../support/env'

Then(/^I should render the login page$/) do
	expect(page.current_path).to eq '/sessions'
end
