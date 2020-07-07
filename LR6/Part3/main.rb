# frozen_string_literal: true

require './function.rb'

puts 'Enter number of rectangles: '
n = gets.chomp.to_i

b1 = 1.0
a1 = 0.1
h1 = (b1 - a1) / n

first_integral_res = intg(n, h1) do |i|
  in_function(a1 + h1 * (i + 0.5))
end

puts "Result of the first integral: #{first_integral_res}"

b2 = 2.0
a2 = 0.0
h2 = (b2 - a2) / n

second_integral_res = intg(n, h2) do |i|
  l = -> { return a2 + h2 * (i + 0.5) }
  sec_function(l.call)
end

puts "Result of the second integral: #{second_integral_res}"
