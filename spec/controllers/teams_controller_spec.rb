require 'spec_helper'
require 'controller_spec_helper'

describe TeamsController do
  subject {TeamsController}
  describe "When Logged out" do
    include ControllerSpecHelper

    before(:each) do
      session[:user_id] = nil
      @login_notice = "you must be logged in to view that page"
    end

    it "does not let the user use the action" do
      controller_actions_should_fail_if_not_logged_in(:teams, except: [:show])
    end
  end

  describe "#create" do
    before(:each) do
      stub_login
    end

    context "with a unique name" do
      it "creates a new team in the database" do
        expect {post 'create', team: FactoryGirl.attributes_for(:team)}.to change(Team, :count).by 1
      end

      it "sets the flash message to 'Team added'" do
        post 'create', team: FactoryGirl.attributes_for(:team)
        expect(flash[:notice]).to eq "Team added"
      end

      it "redirects to the show team page" do
        post 'create', team: FactoryGirl.attributes_for(:team)
        expect(response).to redirect_to team_path(assigns(:team))
      end
    end

    context "With a non unique name" do
      before :each do
        @team = FactoryGirl.create(:team)
        post 'create',
          team: {name: @team.name}
      end

      it "redrects to the new team page" do
        response.should render_template('teams/new')
      end

    end
  end

  describe "#new" do
  end

  describe "#index" do
  end

  describe "#show" do

  end

  describe "#team_params" do
  end

end
