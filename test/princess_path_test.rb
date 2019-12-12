require 'minitest/autorun'
require 'pry'
require './lib/princess_path'

class PrincessPathTest < Minitest::Test

  def setup
    @path = PrincessPath.new
  end

  def test_it_exists
    assert_instance_of PrincessPath, @path
  end

  def test_it_creates_a_grid
    expected = [
    ["-", "-", "-"],
    ["-", "-", "-"],
    ["-", "-", "-"]]
    assert_equal expected, @path.create_grid(3)
  end

  def test_it_places_princess_in_a_corner
    grid = @path.create_grid(3)
    @path.place_princess(grid, 1)
    assert_equal "p", grid[0][0]

    grid_2 = @path.create_grid(5)
    @path.place_princess(grid_2, 3)
    assert_equal "p", grid_2[-1][0]
  end

end
