class ExplicitController < ApplicationController
  def in; end

  def ajax
    @number = params[:m].chomp.to_i

    if @number <= 0
      @number = 0
    end

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

    respond_to do |format|
      format.json {render json: { twins: @array_result } }
    end
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
