require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../../models/team.rb")

class TestTeam < MiniTest::Test

  def setup
    @assistant_nil_child = DatabaseAssistant.new(0, "table", nil)
  end

  def test_

  end

end
