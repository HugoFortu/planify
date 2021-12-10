class PagesController < ApplicationController
  before_action :authenticate_user!, only: :home

  def home
    @tasks = Task.all
    @lists = List.all
    @ideas = Idea.all
  end
end
