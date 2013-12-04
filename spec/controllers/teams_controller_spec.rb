require 'spec_helper'

describe TeamsController do

	describe "POST create" do
		context "With a unique team name" do
			it "Creates a new team in the database" do
				expect to change(Team, :count).by 1
			end
		end
	end

end
