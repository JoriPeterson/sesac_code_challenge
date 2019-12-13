class NextMove

  # code for testing in minitest

  def place_princess(grid)
    max = grid.length - 1
    row = rand(0..max)
    column = rand(0..max)
    grid[row][column] = 'p'
    {row: row, column: column}
  end

  def place_mario(grid)
    max = grid.length - 1
    row = rand(0..max)
    column = rand(0..max)
    until grid[row][column] != 'p'
      row = rand(0..max)
      column = rand(0..max)
    end
  grid[row][column] = 'm'
  {row: row, column: column}
  end

  # code for hackerrank is below:

  def nextMove(n,r,c,grid)
    # place m on grid at r,c
    actions = generate_path(grid, 'm','p')
    puts actions[0]
    grid[r][c] = '-'
    if actions[0] == 'LEFT'
      grid[r][c-1]='m'
    elsif actions[0] == 'RIGHT'
      grid[r][c+1]='m'
    elsif actions[0] == 'UP'
      grid[r-1][c]='m'
    elsif actions[0] == 'DOWN'
      grid[r+1][c]='m'
    end
    actions[0]
  end

  def find_character(grid, character)
    column_index = 0
    row_index = 0
    grid.each_with_index do |row, i|
      column_index = row.index(character)
      if !column_index.nil?
        row_index = i
        break
      end
    end
    {row: row_index, column: column_index}
  end

  def generate_path(grid, mario, princess)
    location = find_character(grid, princess)
    start = find_character(grid, mario)
    actions = []
    ai_location = start
    until ai_location == location
      if ai_location[:row] > location[:row]
        actions << "UP"
        ai_location[:row] -= 1
      elsif ai_location[:row] < location[:row]
        actions << "DOWN"
        ai_location[:row] += 1
      end
      if ai_location[:column] < location[:column]
        actions << "RIGHT"
        ai_location[:column] += 1
      elsif ai_location[:column] > location[:column]
        actions << "LEFT"
        ai_location[:column] -= 1
      end
    end
    return actions
  end
end
