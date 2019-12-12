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

    @path.place_princess(@grid, "hello")
    assert_equal "p", @grid[-1][-1]
  end

  def test_it_gets_middle_index
    expected = {row: 1, column: 1}
    assert_equal expected, @path.get_middle_index(@grid)
    assert_equal 'm', @grid[1][1]

    grid_2 = @path.create_grid(41)
    expected = {row: 20, column: 20}
    assert_equal expected, @path.get_middle_index(grid_2)
    assert_equal 'm', grid_2[20][20]
  end

  def test_it_locates_princess
    @path.place_princess(@grid, 1)
    expected = {row: 0, column: 0}
    assert_equal expected, @path.locate_princess(@grid)
  end

  def test_it_generates_path
    @path.place_princess(@grid, 1)
    assert_equal ["UP", "RIGHT"], @path.generate_path(@grid)
  end

end
