class TwinResult < ApplicationRecord
  validates :before_result, presence: true, uniqueness: true
  before_create :calculate

  def get_solution
    ActiveSupport::JSON.decode(result)
  end

  private
  def calculate
    @number = before_result.to_i
    @number = 0 if @number < 0
    @array_result = []
    @array_of_natural = []
    @array_of_numbers = []
    @iter = 2*@number

    loop do
      @array_of_numbers << @number
      break if (@number == @iter)
      @number += 1
    end

    @array_of_numbers.map do |digit|
      @array_of_natural << digit if natural_number?(digit)
    end

    @array_of_natural.each_cons(2) do |element, next_element|
      @array_result << [element, next_element] if (next_element-element) == 2
    end

    self.result = ActiveSupport::JSON.encode(@array_result)

  end

  private
  def natural_number?(digit)
    check = 0
    1.upto(digit) do |iter|
      check += 1 if (digit % iter == 0)
    end
    check == 2
  end

end
