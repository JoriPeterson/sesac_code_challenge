require 'minitest/autorun'
require 'pry'
require './lib/princess_path'

class PrincessPathTest < Minitest::Test

  def setup
    @path = PrincessPath.new
    @grid = @path.create_grid(3)
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
    @path.place_princess(@grid, 1)
    assert_equal "p", @grid[0][0]

    grid_2 = @path.create_grid(5)
    @path.place_princess(grid_2, 3)
    assert_equal "p", grid_2[-1][0]
  end

  def test_it_can_get_middle_index
    assert_equal 'm', @path.get_middle_index(@grid)

    grid_2 = @path.create_grid(41)
    assert_equal 'm', @path.get_middle_index(grid_2)
  end

  def test_it_can_locate_princess
    @path.place_princess(@grid, 1)
    assert_equal 1, @path.locate_princess(@grid)
  end

end
