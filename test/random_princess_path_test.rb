require_relative 'test_helper'
require 'minitest/autorun'
require 'pry'
require './lib/princess_path'
require './lib/random_princess_path'

class RandomPrincessPathTest < Minitest::Test

  def setup
    @path = PrincessPath.new
    @grid = @path.create_grid(3)
    @random_path = RandomPrincessPath.new
  end

  def test_it_randomly_places_princess
    @random_path.place_princess(@grid)
    assert true, @grid.include?('p')
  end

  def test_it_randomly_places_mario
    @random_path.place_princess(@grid)
    @random_path.place_mario(@grid)
    assert true, @grid.include?('p')
    assert true, @grid.include?('m')
  end

  def test_it_finds_mario_on_grid
    mario = @random_path.place_mario(@grid)
    expected = { row: mario[:row], column: mario[:column] }
    assert_equal expected, @random_path.find_character(@grid, 'm')
  end

  def test_it_finds_princess_on_grid
    princess = @random_path.place_princess(@grid)
    expected = { row: princess[:row], column: princess[:column] }
    assert_equal expected, @random_path.find_character(@grid, 'p')
  end
end
