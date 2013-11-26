require 'spec_helper'

describe SessionsController do

  describe "#new" do
    context "user not logged in" do
      before(:each) do
        get 'new'
      end
      it "returns http success" do
        response.should be_success
      end

      it "renders the new template" do
        expect(response).to render_template "new"
      end

    end

    context "user already logged in" do
      before :each do
        session[:user_id] = 1
        get 'new'
      end

      it "sets a flash message" do
        expect(flash[:notice]).to eq "You are already logged in."
      end 

      it "redirects to the homepage" do
        expect(response).to redirect_to root_path
      end

    end
  end

  describe "#destroy" do
    context "user logged in" do
      before do
        session[:user_id] = 1
      end

      it "deletes the user_id in the session" do
        expect(session[:user_id]).to eq nil
      end

      it "sets a flash message"  do
        expect(flash[:notice]).to eq "You have been logged out"
      end

      it "redirects to the login page" do
        expect(response).to redirect_to ("sessions/new")
      end

    end

  end

  describe "#create" do
    context "valid user" do

      before :each do 
        @user = FactoryGirl.create :user
        post 'create',
          name: @user.name,
          password: @user.password
      end

      it "creates a user_id session object with the user id" do
        expect(session[:user_id]).to eq @user.id
      end

      it "redirects to the root path" do
        expect(response).to redirect_to root_path
      end

      it "sets a flash message"  do
        expect(flash[:notice]).to eq "Successful login"
      end

    end


    context "invalid login" do
      before :each do
        post 'create',
          name: 'not_a_real_name',
          password: 'not_a_real_password'
      end

      it "doesn't create a user_id object in the session" do
        expect(session[:user_id]).to eq nil
      end

      it "re-renders the new page" do
        expect(response).to render_template :new
      end

      it "creates an error message in the flash" do
        expect(flash[:error]).to eq("Incorrect user name or password")
      end
    end


  end



end
