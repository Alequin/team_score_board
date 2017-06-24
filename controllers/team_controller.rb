require("sinatra")
require("sinatra/contrib/all")

require_relative("../other/presenter_manager.rb")
require_relative("../models/team.rb")

get("/team") do
  @teams = Team.get_all()
  @teams = PresenterManager.split_teams_into_rows(@teams)
  erb(:"presenter/index")
end

post("/team/:id") do
  
end
