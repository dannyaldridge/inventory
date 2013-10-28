require 'spec_helper'

describe TeamsController do
	describe "#index" do
		it "Creates the teams" do
			expect(teams.link).to eq 'Cadet Flag' 'Junior Flag', 'Youth Kitted'
		end
	end
end
