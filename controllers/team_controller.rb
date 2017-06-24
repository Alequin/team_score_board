require("sinatra")
require("sinatra/contrib/all")

require_relative("../controllers/team_controllers.rb")

get("/team") do
  erb(:"presenter/index")
end
