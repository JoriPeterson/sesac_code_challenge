require 'minitest/autorun'
require 'pry'
require './lib/princess_path'

class PrincessPathTest < Minitest::Test

  def test_it_exists
    path = PrincessPath.new
    assert_instance_of PrincessPath, path
  end

end
