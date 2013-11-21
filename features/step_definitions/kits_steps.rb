require_relative '../support/env'

When (/^I add an item$/) do
	# expect(items).to eq (items+1)
end

When (/^I set 'type' to 'contact kit'$/) do
	# expect(type).to eq (contact kit)
end

Then (/^I should not be able to change the quantity$/) do
	
end

When (/^I set 'type' to 'training equipment'$/) do
	# expect(type).to eq (training equipment)
end

When (/I set 'quantity' to '(\d+)'$/) do |arg1|

end

Then (/^I should see an item with 'quantity' equal to '(\d+)'$/) do |arg1|

end
