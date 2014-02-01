# require 'spec_helper'
# require 'controller_spec_helper'

# describe TeamsController do
#   subject {TeamsController}
#   describe "When Logged out" do
#     include ControllerSpecHelper

#     before(:each) do
#       session[:user_id] = nil
#       @login_notice = "you must be logged in to view that page"
#     end

#     # it "does not let the user use the action" do
#     #   controller_actions_should_fail_if_not_logged_in(:teams, except: [:show])
#     # end
#   end

#   describe "#create" do
#     before(:each) do
#       stub_login
#     end

#     context "with a unique name" do
#       it "creates a new team in the database" do
#         expect {post 'create', team: FactoryGirl.attributes_for(:team)}.to change(Team, :count).by 1
#       end

#       it "sets the flash message to 'Team added'" do
#         post 'create', team: FactoryGirl.attributes_for(:team)
#         expect(flash[:notice]).to eq "Team added"
#       end

#       it "redrects to the show teams page" do
#         post 'create', team: FactoryGirl.attributes_for(:team)
#         expect(response).to redirect_to ('/teams/1')
#       end
#     end

#     context "With a non unique name" do
#       before :each do
#         @team = FactoryGirl.create(:team)
#         post 'create',
#           team: {name: @team.name}
#       end

#       it "renders to the new team page" do
#         response.should render_template('teams/new')
#       end

#     end
#   end

#     describe "#new" do
#       before :each do
#         stub_login
#         get 'new'
#       end

#     it "Creates a new team object" do
#       expect(assigns[:team]).to be_instance_of Team
#     end

#     it "Creates the new team page" do
#       response.should render_template('teams/new')
#     end
#   end

#   # describe "#index" do
#   #   before :each do
#   #     stub_login
#   #     get 'index'
#   #   end

#   #   it "Gets all the objects for @teams" do
#   #     expect(assigns([:team].count)).to eq ((Team.all).count)
#   #   end
#   # end

#   describe "#show" do
#     before :each do
#       stub_login
#       @team = FactoryGirl.create(:team)
#       get 'show', id: @team.id
#     end

#     it "Assigns @team to the Team with id, params[:id]" do
#       expect(assigns(:team).id).to eq @team.id
#     end
#   end

#   describe "#destroy" do
#     before(:each) do
#       stub_login
#       @team = FactoryGirl.create(:team)

#       delete "destroy", id: @team.id
#     end

#     it "removes the team from the database" do
#       expect(Team.exists?(@team.id)).to be_nil
#     end

#     it "redirects to the index action" do
#         expect(response).to redirect_to teams_path
#     end

#   end

#   describe "#edit" do
#     before :each do
#       stub_login
#       @team = FactoryGirl.create(:team)
#       get 'edit', id: @team.id
#     end

#     it "Assigns @team to the Team with id, params[:id]" do
#       expect(assigns(:team).id).to eq @team.id
#     end
#   end

#   describe "#update" do
#     before :each do
#       stub_login
#       @team = FactoryGirl.create(:team)
#       put 'update', id: @team.id
#     end

#     it "Assigns @team to the Team with id, params[:id]" do
#       expect(assigns(:team).id).to eq @team.id
#     end

#     it "Updates the team attributes" do
#       @team.should_receive(:update_attributes!)
#     end

#     it "redirects to the index action" do
#         expect(response).to redirect_to teams_path
#     end
#   end

# end
