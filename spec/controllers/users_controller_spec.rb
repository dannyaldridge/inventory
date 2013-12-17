require 'spec_helper'

describe UsersController do

  describe "When Logged out" do
    include ControllerSpecHelper

    before(:each) do
      session[:user_id] = nil
      @login_notice = "you must be logged in to view that page"
    end

    it "does not let the user use the action" do
      controller_actions_should_fail_if_not_logged_in(:users, except: [:show])
    end
  end

  describe "POST create" do
    before(:each) do
      stub_login
    end
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

      it "sets the flash message to 'User created successfully'" do
        post 'create', user: FactoryGirl.attributes_for(:user)
        expect(flash[:notice]).to eq "User created successfully"        
      end
    end

    context "with invalid user attitributes" do
      it "doesnt create a new user in the database" do
        expect {
        post 'create', user: FactoryGirl.attributes_for(:invalid_user)
        }.to_not change(User, :count)
      end

      it "redirects to the users new path" do
       post 'create', user: FactoryGirl.attributes_for(:invalid_user)
       response.should render_template('users/new')
      end
    end
  end

end
