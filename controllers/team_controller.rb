require("sinatra")
require("sinatra/contrib/all")

require_relative("../models/team.rb")

get("/team") do
  erb(:"presenter/index")
end
