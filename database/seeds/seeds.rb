require_relative("../../models/team.rb")

teams = []

teams[0] = Team.new({
  "name" => "Winners",
  "score" => 9
})

teams[1] = Team.new({
  "name" => "better Winners",
  "score" => 10
})

teams.each() do |team|
  team.save()
end
