Given(/I go to a team page$/) do
  @team = Team.create(name: "Name")  
  visit team_path(@team)
end
