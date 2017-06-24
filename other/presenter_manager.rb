class PresenterManager

  @@increment_value = 1

  def PresenterManager.split_teams_into_rows(teams)
    row1 = []
    row2 = []
    mid_point = teams.length/2
    teams.each_with_index() do |team, index|
      if(index < mid_point)
        row1.push(team)
      else
        row2.push(team)
      end

    end

    rows = {row1: row1, row2: row2}
    return rows
  end

  def PresenterManager.increment_value()
    return @@increment_value
  end

  def change_increment_value(new_value)
    @@increment_value = new_value
  end

end
