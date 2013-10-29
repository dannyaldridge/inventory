require 'spec_helper'

feature "Users"
	Scenario "Sign up" do
		fill_in 'login', :with => 'James'
    fill_in 'password', :with => '123456'
    fill_in 'password_confirmation', :with => '123456'
  end
  click_link 'Sign up'
end