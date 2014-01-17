require 'spec_helper'
require 'controller_spec_helper'

describe ItemsController do
  
  describe "#new" do
      before :each do
        stub_login
        get 'new'
      end

    	it "Creates a new item object" do
      	expect(assigns[:item]).to be_instance_of Item
    	end

    	it "Creates the new item page" do
      	response.should render_template('item/new')
    	end
  	end

  describe "#create" do
      before :each do
        stub_login
        get 'new'
      end

      context "with a unique name" do
      it "creates a new item in the database" do
        expect {post 'create', item: FactoryGirl.attributes_for(:item)}.to change(Item, :count).by 1
      end

      it "sets the flash message to 'Item added'" do
        post 'create', item: FactoryGirl.attributes_for(:item)
        expect(flash[:notice]).to eq "Item added"
      end

      it "redrects to the show item page" do
        post 'create', item: FactoryGirl.attributes_for(:item)
        expect(response).to redirect_to ('/items/1')
      end
    end

    context "With a non unique name" do
      before :each do
        @item = FactoryGirl.create(:item)
        post 'create',
          item: {name: @item.name}
        end

      it "redrects to the new item page" do
        response.should render_template('items/new')
      end

    end
  end

  

  

end
