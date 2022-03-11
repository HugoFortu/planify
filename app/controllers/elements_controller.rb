class ElementsController < ApplicationController
  before_action :set_element, only: %i[ show edit update destroy ]

  def new
    @list = List.find(params[:list_id])
    @element = Element.new
  end

  def edit
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
    @element.destroy
    redirect_to list_path(@element.list)
  end

  def update
    @element = Element.find(params[:id])
    @element.update(element_params)
    @element.save
    respond_to do |format|
      format.js
    end
  end


  private

  def set_element
    @element = Element.find(params[:id])
  end

  def element_params
    params.require(:element).permit(:name, :quantity, :checked)
  end
end
