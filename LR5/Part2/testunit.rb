# frozen_string_literal: true

require './modulewithoutuser.rb'
require 'minitest/autorun'
# Test class
class TestFunc < Minitest::Test
  def test_1
    assert_equal @test_array = [[1, 2], [4, 5]], find_numbers([1, 2, 3, 4, 5], 2)
    assert_equal @test_array = [[1, 2], [3, 8]], find_numbers([3, 1, 2, 8], 2)
    assert_equal @test_array = [[-1], [10]], find_numbers([10, 9, 0, -1], 1)
    assert_equal @test_array = [[0, 0], [0, 0]], find_numbers([0, 0, 0, 0, 0], 2)
  end
end
