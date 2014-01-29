require 'spec_helper'

describe ItemtypesController do
  
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

  describe "#destroy" do
    before(:each) do 
      stub_login
      @itemtype = FactoryGirl.create(:itemtype)

      delete "destroy", id: @itemtype.id
    end
    
    it "removes the item type from the database" do
      expect(Itemtype.exists?(@itemtype.id)).to be_nil
    end

    it "redirects to the index action" do
        expect(response).to redirect_to itemtypes_path
    end

  end

  describe "#edit" do
    before :each do
      stub_login
      @itemtype = FactoryGirl.create(:itemtype)
      get 'edit', id: @itemtype.id
    end

    it "Assigns @itemtype to the Itemtype with id, params[:id]" do
      expect(assigns(:itemtype).id).to eq @itemtype.id
    end
  end

  describe "#update" do
    before :each do
      stub_login
      @itemtype = FactoryGirl.create(:itemtype)
      # put 'update', id: @itemtype.id
    end

    it "Assigns @itemtype to the Item Type with id, params[:id]" do
      pending
      expect(assigns(:itemtype).id).to eq @itemtype.id
    end

    it "Updates the Item Type attributes" do
      pending
      @itemtype.should_receive(:update_attributes!)
    end

    it "redirects to the index action" do
      pending
      expect(response).to redirect_to itemtypes_path
    end
  end

  describe "#create" do
      before :each do
        stub_login
        post 'create', itemtype: FactoryGirl.attributes_for(:itemtype)
      end

      context "with a unique name" do
        it "creates a new item type in the database" do
          expect {post 'create', itemtype: FactoryGirl.attributes_for(:itemtype)}.to change(Itemtype, :count).by 1
        end

        it "assigns @itemtype to the new ItemType" do
          expect(assigns[:itemtype].class.name).to eq 'Itemtype'
        end

        it "sets the flash message to 'Item type added'" do
          expect(flash[:notice]).to eq "Item Type added"
        end

        it "redrects to the show item type page" do
          expect(response).to redirect_to(assigns[:itemtype])
        end
      end

    context "With a non unique name" do
      before :each do
        @itemtype = FactoryGirl.create(:itemtype)
        post 'create',
          itemtype: {name: @itemtype.name}
        end

      it "redrects to the new item type page" do
        response.should render_template('itemtypes/new')
      end

    end
  end

end
