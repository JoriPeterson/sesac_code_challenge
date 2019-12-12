class PrincessPath

  def create_grid(n)
    Array.new(n) { Array.new(n,'-') }
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

  def get_middle_index(grid)
    rows = grid.length
    middle = rows / 2 + 1
    index = middle - 1
    grid[index][index] = 'm'
  end

  def locate_princess(grid)
    if grid[0][0] == 'p'
      return 1
    elsif grid[0][-1] == 'p'
      return 2
    elsif grid[-1][0] == 'p'
      return 3
    else
      return 4
    end
  end

  def generate_path
  end

  def displayPathtoPrincess#(n,grid)
    return ""
  end

  #displayPathtoPrincess(n,grid)
end
