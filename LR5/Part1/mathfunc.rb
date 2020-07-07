# frozen_string_literal: true

def calculate_math_func(x_string)
  x_float = x_string.to_f
  Math.cos((x_float**2) / ((x_float - 2) * (3 * x_float)))
end
