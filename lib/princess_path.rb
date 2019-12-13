class PrincessPath

  # code for testing in minitest
  def create_grid(n)
    Array.new(n) { '---'}
  end

  def place_princess(grid, corner)
    if corner == 1
      grid[0][0] = 'p'
    elsif corner == 2
      grid[0][-1] = 'p'
    elsif corner == 3
      grid[-1][0] = 'p'
    else
      grid[-1][-1] = 'p'
    end
  end

  # code for hackerrank is below:

  def displayPathtoPrincess(n,grid)
    actions = generate_path(grid)
    puts actions.join("\n")
    return actions.join("\n")
  end

  def get_middle_index(grid)
    index = grid.length / 2
    {row: index, column: index}
  end

  def locate_princess(grid)
    max = grid.length - 1
    if grid[0][0] == 'p'
      return {row: 0, column: 0}
    elsif grid[0][-1] == 'p'
      return {row: 0, column: max}
    elsif grid[-1][0] == 'p'
      return {row: max, column: 0}
    else
      return {row: max, column: max}
    end
  end

  def generate_path(grid)
    location = locate_princess(grid)
    start = get_middle_index(grid)
    actions = []
    until actions.length >= grid.length - 1
      if start[:row] > location[:row]
        actions << "UP"
      elsif start[:row] < location[:row]
        actions << "DOWN"
      end
      if start[:column] > location[:column]
        actions << "LEFT"
      elsif start[:column] < location[:column]
        actions << "RIGHT"
      end
    end
    return actions
  end
end
