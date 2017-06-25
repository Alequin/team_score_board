require("sinatra")
require("sinatra/contrib/all")

require_relative("../models/team.rb")

get("/panel") do
  @teams = Team.get_all("id", "ASC")
  erb(:"control_panel/index")
end

post("/panel") do
  team = Team.new(params)
  team.save()
  redirect to("/panel")
end

post("/panel/:id") do
  team = Team.new(params)
  team.update
  redirect to("/panel")
end
