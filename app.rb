require("sinatra")
require("sinatra/contrib/all")

require_relative("controllers/team_controller.rb")

get("/") do
  redirect to("/team")
end
