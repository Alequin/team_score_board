class PresenterManager

  @@increment_value = 1

  def PresenterManager.split_teams_into_rows(teams)
    row1 = []
    row2 = []

    teams.each_with_index() do |team, index|
      row1.push(team) if(index.even?())
      row2.push(team) if(index.odd?())
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
