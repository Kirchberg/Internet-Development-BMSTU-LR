class XmlController < ApplicationController

  def index
    @value = params[:val].to_i
    if @value <= 0
      @value = 0
    end
    
    @array_result = []
    @array_of_natural = []
    @array_of_numbers = []
    @iter = 2*@value

    loop do
      @array_of_numbers << @value
      break if (@value == @iter)
      @value += 1
    end

    @array_of_numbers.map do |digit|
      @array_of_natural << digit if natural_number?(digit)
    end

    @array_of_natural.each_cons(2) do |element, next_element|
      @array_result << [@array_result.length + 1, element, next_element] if (next_element-element) == 2
    end

    data = @array_result.map { |val| { iteration: val[0], firstvalue: val[1], secondvalue: val[2] } }
    respond_to do |format|
      format.xml { render xml: data.to_xml }
      format.rss { render xml: data.to_xml }
    end
  end

  protected
  def natural_number?(digit)
    check = 0
    1.upto(digit) do |iter|
      check += 1 if (digit % iter == 0)
    end
    check == 2
  end
end
