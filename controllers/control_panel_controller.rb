require("sinatra")
require("sinatra/contrib/all")

require_relative("../models/team.rb")

get("/panel") do
  @teams = Team.get_all("id", "ASC")
  erb(:"control_panel/index")
end

post("/panel/:id") do
  
end
