require("sinatra")
require("sinatra/contrib/all")

require_relative("../controllers/team_controllers.rb")

get("/") do
  redirect to("/team")
end
