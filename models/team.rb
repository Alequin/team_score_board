require_relative("../database/databaseassistant.rb")
require_relative("../other/validator.rb")

class Team

  def initialize(options)
    options = fill_empty_attributes(options)
    @name = options["name"]
    @score = options["score"].to_i
  end

  private

  def fill_empty_attributes(options)
     options["name"] = "No team name" if(options["name"])
     options["score"] = 0 if(options["score"])
  end


end
