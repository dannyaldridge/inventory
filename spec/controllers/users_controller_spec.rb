require 'spec_helper'

describe UsersController do


  describe "POST create" do
    context "with valid user attributes" do
      it "creates a new user in the database" do
        expect {
        post 'create', user: FactoryGirl.attributes_for(:user)
        }.to change(User, :count).by 1
      end

      it "redirects to the root path" do
        post 'create', user: FactoryGirl.attributes_for(:user)
        expect(response).to redirect_to root_path
      end

      it "sets the flash message to 'Thanks for signing up'" do
        post 'create', user: FactoryGirl.attributes_for(:user)
        expect(flash[:notice]).to eq "Thanks for signing up"        
      end
    end

    context "with invalid user attitributes" do
      it "doesnt create a new user in the database" do
      end

      it "redirects to the users new path" do
      end
    end
  end

end
