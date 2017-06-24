require_relative("../database/database_assistant.rb")
require_relative("../other/validator.rb")

class Team < DatabaseAssistant

  @@TABLE_NAME = "teams"

  def initialize(options)
    options = fill_empty_attributes(options)
    super(options["id"], @@TABLE_NAME, "Team")
    @name = options["name"]
    @score = options["score"].to_i
  end

  private

  def fill_empty_attributes(options)
     options["name"] = "No team name" if(Validator.input_empty?(options["name"]))
     options["score"] = 0 if(Validator.input_empty?(options["score"]))
     return options
  end

end
