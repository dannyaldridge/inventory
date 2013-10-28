class TeamsController < ApplicationController

def index
		@teams = [
			'cadet-flag',
			'junior-flag',
			'youth-kitted'
		]
	end
	
end
