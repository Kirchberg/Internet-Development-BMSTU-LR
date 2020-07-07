# frozen_string_literal: true

def enter_digits_array(count, real_array)
  count.times do |i|
    real_array[i] = gets.chomp.to_i
  end
  puts
  real_array
end

def check_k_number(count)
  k_number = gets.chomp.to_i
  while k_number >= count
    puts("Please enter K < #{count}: ")
    k_number = gets.chomp.to_i
  end
  puts
  k_number
end

def find_numbers(real_array, k_number)
  real_array = real_array.sort
  return_array = []
  max_array = []
  min_array = []
  min_numb = 0
  max_numb = 0
  length = real_array.size

  length.times do |i|
    if min_numb < k_number
      min_array[min_numb] = real_array[i]
      min_numb += 1
    end

    if max_numb < k_number
      max_array[max_numb] = real_array[real_array.size - k_number + max_numb]
      max_numb += 1
    end
  end

  return_array[0] = min_array
  return_array[1] = max_array
  return_array
end

def print_array(array)
  array.map { |elem| puts elem.to_s }
  puts
end
