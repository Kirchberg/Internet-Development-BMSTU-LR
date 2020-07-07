class ExplicitController < ApplicationController
  def in; end

  def ajax
    @number = params[:m].chomp.to_i

    respond_to do |format|
      format.json {render json: { twins: TwinResult.where(before_result: @number).first_or_create.get_solution } }
    end

    p TwinResult.last
    p JSON.parse(TwinResult.all.to_json).to_xml

  end

  def results
    respond_to do |format|
      @result = TwinResult.all
      format.xml {render xml: JSON.parse(TwinResult.all.to_json).to_xml}
      format.json {render json: @result}
      format.any {render inline: 'Specify format'}
    end
  end

end
