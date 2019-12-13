class RandomPrincessPath

  # code for testing in minitest

  def place_princess(grid)
    max = grid.length - 1
    row = rand(0..max)
    column = rand(0..max)
    grid[row][column] = 'p'
    { row: row, column: column}
  end

  def place_mario(grid)
    max = grid.length - 1
    potential_row = rand(0..max)
    potential_column = rand(0..max)
    row = 0
    column = 0
    until grid[potential_row][potential_column] == '-'
      row = potential_row
      column = potential_column
    end
  grid[row][column] = 'm'
  { row: row, column: column}
  end

  # code for hackerrank is below:

  def displayPathtoPrincess(n,grid)
    actions = generate_path(grid)
    puts actions.join("\n")
    return actions.join("\n")
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
    { row: row_index, column: column_index}
  end

  def generate_path(grid)
    location = locate_princess(grid)
    start = # find starting point for mario
    # actions = []
    # until actions.length == grid.length - 1
    # what if m & p are on same row?
      if start[:row] > location[:row]
        actions << "UP"
      elsif start[:row] < location[:row]
        actions << "DOWN"
      end
      # what if m and p are on the same column?
      if start[:column] > location[:column]
        actions << "RIGHT"
      elsif start[:column] < location[:column]
        actions << "LEFT"
      end
    # end
    return actions
  end
end
