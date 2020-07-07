# frozen_string_literal: true

require './mathfunc.rb'

print 'Enter x: '
x_string = gets
puts "y: #{calculate_math_func(x_string)}"
