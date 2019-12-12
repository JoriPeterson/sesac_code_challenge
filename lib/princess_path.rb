class PrincessPath

  def create_grid(n)
    Array.new(n) { Array.new(n,'-') }
  end

  def get_four_corner_indexes
    # return indexes of four corners
    # first array, first & last index
    # last array, first & last index
  end

  def place_princess
    # randomly place princess('p') in one of four corners
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
