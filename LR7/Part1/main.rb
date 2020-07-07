# frozen_string_literal: true

require './func.rb'

puts 'Enter string for F File: '
str = gets.chomp.to_s
t1 = MyFile.new(str)
t1.write_file
t1.create_file
puts "Output G File: #{t1.out_file}"
