# frozen_string_literal: true

def unless_cycle(current_accuracy)
  endless_cycle = Enumerator.new do |y|
    range_member = 0.5
    loop do
      break if range_member < current_accuracy

      y << range_member
      range_member /= 2.0
    end
  end
  result = 1.0
  endless_cycle.each do |number|
    result += number
  end
  result
end
