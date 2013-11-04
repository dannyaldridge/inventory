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

    	end
    end



end
