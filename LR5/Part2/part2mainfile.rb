# frozen_string_literal: true

require './modulewithoutuser.rb'

real_array = []

print 'Enter length array: '
count = gets.chomp.to_i

puts 'Enter numbers: '
real_array = enter_digits_array(count, real_array)

puts 'Enter K: '
k_number = check_k_number(count)

max_min_array = find_numbers(real_array, k_number)

puts 'Min Numbers: '
print_array(max_min_array[0])

puts 'Max Numbers: '
print_array(max_min_array[1])
