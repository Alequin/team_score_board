class PresenterManager

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

end
