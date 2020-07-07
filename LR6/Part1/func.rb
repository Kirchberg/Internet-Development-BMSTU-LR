# frozen_string_literal: true

def unless_cycle(current_accuracy)
  result = 1.0
  range_member = 0.5
  while range_member > current_accuracy
    result += range_member
    range_member /= 2.0
  end
  result
end
