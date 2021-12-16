class ElementsController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @element = Element.new
  end

  def create
    @list = List.find(params[:list_id])
    @element = Element.new(element_params)
    @element.list = @list
    if @element.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @element = Element.find(params[:id])
    @element.destroy
    redirect_to list_path(@element.list)
  end

  def update
    binding.pry
    @element = Element.find(params[])
    @element.update(checked: params[:checked])

    respond_to do |format|
      format.html
      format.text { render partial: 'candidates/candidates_table', locals: { element: @element }, formats: [:html] }
    end

  end

  private

  def element_params
    params.require(:element).permit(:name, :quantity)
  end
end
