require_relative '../support/env'

Given (/^I go to the add kit page$/) do
  visit "/kits/new"
end

When (/^I add an item$/) do
	# expect(items).to eq (items+1)
end

When (/^I set 'kit type' to 'contact kit'$/) do
	expect(kit_type).to eq (contact kit)
end

Then (/^I should not be able to change the quantity$/) do
	
end

When (/^I set 'kit type' to 'training equipment'$/) do
	# expect(type).to eq (training equipment)
end

When (/I set 'quantity' to '(\d+)'$/) do |arg1|
	#expect(quantity) to eq 10
end

Then (/^I should see an item with 'quantity' equal to '(\d+)'$/) do |arg1|

end

When (/^I set 'description' to 'flags'$/) do

end

When (/^I set 'squad' to 'Junior Flag'$/) do

end

Then (/^I should see an item with 'squad' equal to 'junior flag'$/) do

end
