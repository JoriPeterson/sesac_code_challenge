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

  def test_it_finds_character_on_grid
    @random_path.place_princess(@grid)
    @random_path.place_mario(@grid)
  end
end
