require 'spec_helper'

describe TeamsController do

	describe "create" do
		context "with a unique name" do
			it "creates a new team in the database" do
				expect {post 'create', team: FactoryGirl.attributes_for(:team)}.to change(Team, :count).by 1
			end

			it "sets the flash message to 'Team added'" do
				post 'create', team: FactoryGirl.attributes_for(:team)
				expect(flash[:notice]).to eq "Team added"
			end

			it "redrects to the show teams page" do
				post 'create', team: FactoryGirl.attributes_for(:team)
				expect(response).to redirect_to ('/teams/1')
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
end
