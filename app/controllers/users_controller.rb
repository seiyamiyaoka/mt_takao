class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:new, :show, :edit, :update]

  def new
  end

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:name, :image, :birthday, :self_introduction)
  end
end
