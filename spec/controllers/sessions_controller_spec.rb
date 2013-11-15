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

    		it "creates a user_name session object with the user name" do
        	expect(session[:user_name]).to eq @user.name
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
    				name: "non existant name",
    				password: "non existant password"
    		end

    		it "does not creates a user_name session object with the user name" do
        	expect(session[:user_name]).to eq nil
      	end

      	it "renders the session page" do
        	response.should render_template('sessions/new')
     		end

	      it "sets a flash message"  do
	        expect(flash[:notice]).to eq "That name or password is incorrect"
      	end

    	end

      context "no user with specified name" do
      before :each do
        post 'create',
          name: 'not_a_real_name',
          password: 'password'
      end

      it "doesn't create a user_name object in the session" do
        expect(session[:user_name]).to eq nil
      end

      it "re-renders the new page" do
        expect(response).to render_template :new
      end

      it "creates an error message in the flash" do
        expect(flash[:error]).to eq(
          "That name or password is incorrect"
        )
      end
    end


    end



end
