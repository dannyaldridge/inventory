require 'spec_helper'

describe 'team link' do
	it "goes to the team page when clicked" do
		visit('/teams')
		page.should have_content('youth-kitted')

		click_link "youth-kitted"
		page.should have_content("kit")
	end
end