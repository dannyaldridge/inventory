require 'spec_helper'

describe UsersController do

  subject { UsersController }

  it 'calls the authenticate_user before_filter' do
    expect(subject.before_filter_collection).to include(:authenticate_user)
  end

  describe 'POST create' do
    before(:each) do
      stub_login
    end
    context 'with valid user attributes' do
      it 'creates a new user in the database' do
        expect do
        post 'create', user: FactoryGirl.attributes_for(:user)
        end.to change(User, :count).by 1
      end

      it 'redirects to the root path' do
        post 'create', user: FactoryGirl.attributes_for(:user)
        expect(response).to redirect_to root_path
      end

      it "sets the flash message to 'User created successfully'" do
        post 'create', user: FactoryGirl.attributes_for(:user)
        expect(flash[:notice]).to eq 'User created successfully'
      end
    end

    context 'with invalid user attitributes' do
      it 'doesnt create a new user in the database' do
        expect do
        post 'create', user: FactoryGirl.attributes_for(:invalid_user)
        end.to_not change(User, :count)
      end

      it 'redirects to the users new path' do
       post 'create', user: FactoryGirl.attributes_for(:invalid_user)
       response.should render_template('users/new')
      end
    end
  end

end
