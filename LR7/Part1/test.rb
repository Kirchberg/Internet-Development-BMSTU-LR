# frozen_string_literal: true

require './func.rb'
require 'minitest/autorun'
# Test class
class TestFunc < Minitest::Test
  def setup
    @t1 = MyFile.new('ASDdfgAd')
  end

  def test_1
    @t1.write_file
    @t1.create_file
    str = File.read 'G.txt'
    assert_equal 'asddfgad', str
  end

  def teardown
    puts 'Starting to delete files'
    File.delete('./F.txt') if File.exist?('./F.txt')
    File.delete('./G.txt') if File.exist?('./G.txt')
    puts 'All files has been deleted'
  end
end
