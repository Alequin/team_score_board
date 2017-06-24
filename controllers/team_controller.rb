require("sinatra")
require("sinatra/contrib/all")

require_relative("../other/presenter_manager.rb")
require_relative("../models/team.rb")

get("/team") do
  @teams = Team.get_all()
  @teams = PresenterManager.split_teams_into_rows(@teams)
  erb(:"presenter/index")
end

post("/team/presenter/:id") do
  team = Team.find_by_id(params["id"])
  amount = PresenterManager.increment_value
  form_value = params["edit_score"]
  team.increase_score(amount) if(form_value == "+")
  team.decrease_score(amount) if(form_value == "-")
  redirect to("/team")
end
