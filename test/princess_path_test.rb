require_relative 'test_helper'
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
    "---",
    "---",
    "---"]
    assert_equal expected, @path.create_grid(3)
  end

  def test_it_places_princess_in_a_corner
    @path.place_princess(@grid, 1)
    assert_equal "p", @grid[0][0]
    refute @grid[0][3] == "p"

    grid_2 = @path.create_grid(5)
    @path.place_princess(grid_2, 3)
    assert_equal "p", grid_2[-1][0]

    @path.place_princess(@grid, "hello")
    assert_equal "p", @grid[-1][-1]
  end

  def test_it_gets_middle_index
    expected = {row: 1, column: 1}
    assert_equal expected, @path.get_middle_index(@grid)

    grid_2 = @path.create_grid(41)
    expected = {row: 20, column: 20}
    assert_equal expected, @path.get_middle_index(grid_2)
  end

  def test_it_locates_princess
    @path.place_princess(@grid, 1)
    expected = {row: 0, column: 0}
    assert_equal expected, @path.locate_princess(@grid)
  end

  def test_it_generates_path
    @path.place_princess(@grid, 1)
    assert_equal ["UP", "LEFT"], @path.generate_path(@grid)
  end

  def test_it_generates_path_2
    @path.place_princess(@grid, 2)
    assert_equal ["UP", "RIGHT"], @path.generate_path(@grid)
  end

  def test_it_generates_path_3
    @path.place_princess(@grid, 3)
    assert_equal ["DOWN", "LEFT"], @path.generate_path(@grid)
  end

  def test_it_generates_path_4
    @path.place_princess(@grid, 4)
    assert_equal ["DOWN", "RIGHT"], @path.generate_path(@grid)
  end

  def test_is_displays_path_to_princess
    @path.place_princess(@grid, 2)
    assert_equal "UP\nRIGHT", @path.displayPathtoPrincess(3, @grid)
  end
end
