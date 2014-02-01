require 'spec_helper'

describe TeamsController do

  subject { TeamsController }

  it 'calls the authenticate_user before_filter' do
    expect(subject.before_filter_collection).to include(:authenticate_user)
  end

  describe '#create' do
    before(:each) do
      stub_login
    end

    context 'with a unique name' do
      it 'creates a new team in the database' do
        expect { post 'create', team: FactoryGirl.attributes_for(:team) }.to change(Team, :count).by(1)
      end

      it "sets the flash message to 'Team added'" do
        post 'create', team: FactoryGirl.attributes_for(:team)
        expect(flash[:notice]).to eq('Team added')
      end

      it 'redirects to the show team page' do
        post 'create', team: FactoryGirl.attributes_for(:team)
        expect(response).to redirect_to team_path(assigns(:team))
      end
    end

    context 'With a non-unique name' do
      before(:each) do
        @team = FactoryGirl.create(:team)
        post 'create',
             team: { name: @team.name }
      end

      it 'redirects to the new team page' do
        response.should render_template('teams/new')
      end

    end
  end

  describe '#edit' do
    before(:each) do
      stub_login
      @team = FactoryGirl.create(:team)
      get(:edit, id: @team)
    end

    it 'renders the edit page' do
      response.should render_template('teams/edit')
    end

    it 'assigns @team to the team provided' do
      expect(assigns[:team].id).to eq @team.id
    end
  end

  describe '#update' do
    before(:each) do
      stub_login
    end

    context 'valid attributes' do
      before(:each) do
        @team = FactoryGirl.create(:team)
        put(:update,  id: @team, team: { name: 'New team name'  })
      end

      it 'locates the requested @team' do
        expect(assigns(:team).id).to eq(@team.id)
      end

      it "changes @team's attributes" do
        @team.reload
        expect(@team.name).to eq('New team name')
      end

      it 'redirects to the updates team' do
        expect(response).to redirect_to(@team)
      end
    end

    context 'invalid attributes' do

      before(:each) do
        @team = FactoryGirl.create(:team)
        put(:update,  id: @team, team: FactoryGirl.attributes_for(:team, :invalid))
      end

      it 'locates the requested @team' do
        expect(assigns(:team).id).to eq(@team.id)
      end

      it "does not change @team's attributes" do
        @team.reload
        expect(@team.name).to_not(be_nil)
      end

      it 're-renders the edit method' do
        expect(response).to render_template(:edit)
      end

    end
  end

  describe '#destroy' do
    before(:each) do
      stub_login
      @team = FactoryGirl.create(:team)
    end

    it 'removes the team from the database' do
      expect { delete(:destroy, id: @team) }.to change(Team, :count).by(-1)

    end

    it 'redirects to the team index page' do
      delete(:destroy, id: @team)
      response.should redirect_to(teams_path)
    end

    describe '#new' do
    end

    describe '#index' do
    end

    describe '#show' do
    end

    describe '#team_params' do
    end
  end
end
