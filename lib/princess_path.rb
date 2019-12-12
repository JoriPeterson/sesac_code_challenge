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

  def get_middle_index
  end

  def locate_princess
    # this function looks through the 4 corners
    # to check for the 'p'
  end

  def generate_path
  end

  def displayPathtoPrincess#(n,grid)
    return ""
  end

  #displayPathtoPrincess(n,grid)
end
