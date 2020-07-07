# frozen_string_literal: true

def sec_function(x_float)
  Math.sin(x_float) * Math.cos(x_float)
end

def in_function(x_float)
  Math.log(x_float, 10) / x_float
end

def intg(n_count_rectangles, h_of_rectangles)
  result = 0.0
  n_count_rectangles.times do |i|
    result += yield i
  end
  result *= h_of_rectangles
  result
end
