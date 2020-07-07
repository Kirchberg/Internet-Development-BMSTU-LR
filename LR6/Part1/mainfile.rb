# frozen_string_literal: true

require './func.rb'

puts 'Cycle with 10**-4 accuracy: '
puts "Sum: #{unless_cycle(10**-4)}"
puts ''
puts 'Cycle with 10**-5 accuracy: '
puts "Sum: #{unless_cycle(10**-5)}"
