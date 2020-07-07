# frozen_string_literal: true

require './func.rb'
require 'minitest/autorun'
# Test class
class TestFunc < Minitest::Test
  def test_1
    assert_equal 1.9998779296875, unless_cycle(10**-4)
    assert_equal 1.9999847412109375, unless_cycle(10**-5)
    assert_equal 1.0, unless_cycle(1)
  end
end
