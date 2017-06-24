require("sinatra")
require("sinatra/contrib/all")

require_relative("../models/team.rb")

get("/team") do
  @teams = Team.get_all()
  erb(:"presenter/index")
end
