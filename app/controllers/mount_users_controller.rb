class MountUsersController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user!
  before_action :set_user, only: [:edit, :update]
  def new
    #code
  end
  def show
    @user = User.find(params[:id])
  end

  def edit
  end
  def update
    @user.update(user_params)
    redirect_to mount_user_path
  end
  private
  def set_user
    @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit(:name)
  end

  def correct_user!
    @user = User.find(params[:id])
    redirect_to mount_user_path(current_user.id) unless current_user.id == @user.id
  end
end
