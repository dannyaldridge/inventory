class TeamsController < ApplicationController
  before_filter :authenticate_user 

  def index
    @teams = [
      'cadet-flag',
      'junior-flag',
      'youth-kitted'
    ]
  end
end
