class ListsController < ApplicationController
  before_action :set_list, only: %i[ show edit update destroy ]

  # skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @lists = List.all
  end

  def show
  end

  def edit
  end

  def update
    @list.update(list_params)
    redirect_to lists_path
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user_id = current_user.id
    if @list.save
      redirect_to lists_path
    else
      render :new
    end
  end


  private

    def set_list
      @list = List.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:title, :user_id)
    end
end
