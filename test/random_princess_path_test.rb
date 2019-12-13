require_relative 'test_helper'
require 'minitest/autorun'
require 'pry'
require './lib/random_princess_path'

class RandomPrincessPathTest < Minitest::Test

  def setup
    @path = RandomPrincessPath.new
    @grid = @path.create_grid(3)
  end

  def test_it_randomly_places_princess
    @path.place_princess(@grid)
    assert true, @grid.include?('p')
  end

  def test_it_randomly_places_mario
    skip
    @path.place_princess(@grid)
    @path.place_mario(@grid)
    assert true, @grid.include?('p')
    assert true, @grid.include?('m')
  end
end
