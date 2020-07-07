# frozen_string_literal: true

require './func.rb'
require 'minitest/autorun'
# Test class
class TestFunc < Minitest::Test
  def setup
    @word_parent = 'Hello'
    @word_child = 'World!'
    @t1 = ParentWord.new(@word_parent)
    @t2 = ChildWord.new(@word_child, @word_child.size)
  end

  def test_vowel_letters_parent
    assert_equal 2, @t1.count_vowel_letters
  end

  def test_vowel_letters_child
    assert_equal 1, @t2.count_vowel_letters
  end

  def test_link
    expected = 'ParentWord'
    assert_equal expected, @t2.class.superclass.name
  end
end
