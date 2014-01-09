require 'spec_helper'
require 'controller_spec_helper'

describe ItemsController do
  
  describe "#new" do
      before :each do
        stub_login
        get 'new'
      end

    	it "Creates a new item type object" do
      	expect(assigns[:itemtype]).to be_instance_of Itemtype
    	end

    	it "Creates the new item type page" do
      	response.should render_template('itemtypes/new')
    	end
  	end

  

  

end
