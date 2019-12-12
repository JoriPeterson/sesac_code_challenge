require 'minitest/autorun'
require 'pry'
require './lib/princess_path'

class PrincessPathTest < Minitest::Test

  def test_it_exists
    path = PrincessPath.new
    assert_instance_of PrincessPath, path
  end

  def test_it_creates_a_grid
    path = PrincessPath.new
    expected = [
    ["-", "-", "-"],
    ["-", "-", "-"],
    ["-", "-", "-"]]
    assert_equal expected, path.create_grid(3)
  end

end
