require 'spec_helper'
require 'controller_spec_helper'

describe TeamsController do
  
  describe "#new" do
      before :each do
        stub_login
        get 'new'
      end

    	it "Creates a new team object" do
      	expect(assigns[:team]).to be_instance_of Team
    	end

    	it "Creates the new team page" do
      	response.should render_template('teams/new')
    	end
  	end

end
