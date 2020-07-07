# frozen_string_literal: true

# File, work, class
class MyFile
  attr_accessor :str
  def initialize(str)
    @str = str
    File.new('F.txt', 'w')
  end

  def write_file
    File.open('F.txt', 'w') do |f|
      f.write(str)
    end
  end

  def create_file
    File.new('G.txt', 'w')
    File.open('G.txt', 'w') do |g|
      str = File.read 'F.txt'
      g.write(str.downcase)
    end
  end

  def out_file
    File.read 'G.txt'
  end
end
