class IdeasController < ApplicationController
  before_action :set_idea, only: %i[ show edit update destroy ]

  # skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @ideas = Idea.all
  end

  def show
  end

  def edit
  end

  def update
    @idea.update(idea_params)
    redirect_to ideas_path
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params)
    @idea.user_id = current_user.id
    if @idea.save
      redirect_to ideas_path
    else
      render :new
    end
  end

  def destroy
    @idea.destroy
    redirect_to ideas_path
  end

  private

    def set_idea
      @idea = Idea.find(params[:id])
    end

    def idea_params
      params.require(:idea).permit(:title, :content, :project, :project_type, :user_id)
    end
end
