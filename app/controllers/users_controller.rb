class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    @user.update(users_params)
    redirect_to user_path(@user)
  end

  private

  def users_params
    params.require(:user).permit(:pseudo, :email, :telephone, :avatar)
  end
end
