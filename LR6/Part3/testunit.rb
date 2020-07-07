# frozen_string_literal: true

require './function.rb'
require 'minitest/autorun'
# Test class
class TestFunc < Minitest::Test
  def first_setup
    b1 = 1.0
    a1 = 0.1
    h1 = (b1 - a1) / 999_999

    first_integral_res = intg(999_999, h1) do |i|
      in_function(a1 + h1 * (i + 0.5))
    end
    first_integral_res
  end

  def test_1
    expected_result = -1.1512925464922008
    assert_in_delta expected_result, first_setup
  end

  def second_setup
    b2 = 2.0
    a2 = 0.0
    h2 = (b2 - a2) / 9

    second_integral_res = intg(9, h2) do |i|
      l = -> { return a2 + h2 * (i + 0.5) }
      sec_function(l.call)
    end
    second_integral_res
  end

  def test_2
    assert_in_delta 0.4168331699197643, second_setup
  end
end
