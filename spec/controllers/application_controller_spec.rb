require 'spec_helper'

describe ApplicationController do

  describe "#authenticate_user" do
    controller do
      before_filter :authenticate_user

      def index
        render text: "logged in"
      end
    end

    context "user not logged in"  do
      before :each do
        session[:user_id] = nil
        get :index
      end

      it "redirects to the login page" do
        expect(response).to redirect_to new_session_path 
      end

      it "sets flash notice to 'you must be logged in to view that page'" do
        expect(flash[:notice]).to eq 'you must be logged in to view that page'
      end
    end

    context "user in logged in" do

      before :each do
        @user = FactoryGirl.create :user
        session[:user_id] = @user.id
        get :index
      end

        it "continues to the index page" do
          expect(response.body).to include "logged in"
        end 

        it "sets @current_user to the user object" do
          expect(assigns[:current_user]).to eq @user
        end

    end
  end
end
