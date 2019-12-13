require_relative 'test_helper'
require 'minitest/autorun'
require 'pry'
require './lib/princess_path'
require './lib/next_move'

class NextMoveTest < Minitest::Test

  def setup
    @path = PrincessPath.new
    @grid = @path.create_grid(3)
    @move = NextMove.new
  end

  def test_it_exists
    assert_instance_of NextMove, @move
  end

  def test_it_randomly_places_princess
    princess = @move.place_princess(@grid)
    assert_equal 'p', @grid[princess[:row]][princess[:column]]
  end

  def test_it_places_mario_separate_from_princess
    princess = @move.place_princess(@grid)
    mario = @move.place_mario(@grid)
    assert_equal 'p', @grid[princess[:row]][princess[:column]]
    assert_equal 'm', @grid[mario[:row]][mario[:column]]
  end

  def test_it_finds_mario_on_grid
    mario = @move.place_mario(@grid)
    expected = { row: mario[:row], column: mario[:column] }
    assert_equal expected, @move.find_character(@grid, 'm')
  end

  def test_it_finds_princess_on_grid
    princess = @move.place_princess(@grid)
    expected = { row: princess[:row], column: princess[:column] }
    assert_equal expected, @move.find_character(@grid, 'p')
  end

  def test_it_generates_path_to_princess
    grid = [
    "p--",
    "---",
    "m--"]

    assert_equal ["UP", "UP"], @move.generate_path(grid, 'm', 'p')
  end

  def test_it_generates_path_to_princess_2
    grid = [
    "m--",
    "---",
    "--p"]

    assert_equal ["DOWN", "RIGHT", "DOWN", "RIGHT"], @move.generate_path(grid, 'm', 'p')
  end

  def test_it_finds_next_move
    @move.place_princess(@grid)
    mario = @move.place_mario(@grid)
    expected = ["UP", "DOWN", "LEFT", "RIGHT"]
    result = @move.nextMove(@grid.length,mario[:row],mario[:column],@grid)
    assert expected.include?(result)
  end

  def test_grid_changes
    grid = [
    "m--",
    "---",
    "--p"]

    expected = [
      "---",
      "m--",
      "--p"]

    @move.nextMove(grid.length,0,0,grid)
    assert_equal expected, grid
  end

  def test_grid_changes_2
    grid = [
    "p--",
    "---",
    "--m"]

    expected = [
      "p--",
      "--m",
      "---"]

    @move.nextMove(grid.length,2,2,grid)
    assert_equal expected, grid
  end
end
