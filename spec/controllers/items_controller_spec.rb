require 'spec_helper'

describe ItemsController do

  describe '#new' do
      before :each do
        stub_login
        get 'new'
      end

    	it 'Creates a new item object' do
      	expect(assigns[:item]).to be_instance_of Item
    	end

    	it 'Renders the new item page' do
      	response.should render_template('items/new')
    	end
  	end

  describe '#create' do
      before :each do
        stub_login
        get 'new'
        post 'create', item: FactoryGirl.attributes_for(:item)
      end

      context 'with a unique name' do
      it 'creates a new item in the database' do
        expect { post 'create', item: FactoryGirl.attributes_for(:item) }.to change(Item, :count).by 1
      end

      it "sets the flash message to 'Item added'" do
        expect(flash[:notice]).to eq 'Item added'
      end

      it 'assigns @item to an Item' do
        expect(assigns[:item].class.name).to eq 'Item'
      end

      it 'redrects to the show item page' do
        expect(response).to redirect_to(assigns[:item])
      end
    end

    context 'With a non-unique name' do
      before :each do
        @item = FactoryGirl.create(:item)
        post 'create',
             item: { name: @item.name }
        end

      it 'redrects to the new item page' do
        response.should render_template('items/new')
      end

    end
  end

end
