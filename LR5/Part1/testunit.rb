# frozen_string_literal: true

require './mathfunc.rb'
require 'minitest/autorun'
# Test class
class TestMathFunc < Minitest::Test
  def test_1
    assert_in_delta 0.9449569463147377, calculate_math_func(1)
    assert_in_delta 0.9800665778412416, calculate_math_func(0.75)
    assert_in_delta 0.993833508538892, calculate_math_func(0.5)
    assert_in_delta 0.9977786007011223, calculate_math_func(-0.5)
  end
end
