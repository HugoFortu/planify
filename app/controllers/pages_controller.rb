class PagesController < ApplicationController
  before_action :authenticate_user!

  def home
    @tasks = Task.all
    @lists = List.all
    @ideas = Idea.all
  end

  def calendar
  end
end
