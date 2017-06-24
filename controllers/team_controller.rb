require("sinatra")
require("sinatra/contrib/all")

require_relative("../other/presenter_manager.rb")
require_relative("../models/team.rb")

get("/team") do
  @teams = Team.get_all()
  @teams =
  erb(:"presenter/index")
end
