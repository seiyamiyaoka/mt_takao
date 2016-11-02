class ReculutementsController < ApplicationController
  def index
    @users = User.get_participations(current_user)
  end

  def show
    #code
  end

  def create
    @reculutement = Reculutement.new(
                    participation_id: current_user.id,
                    promise_id: params[:promise_id])
    @reculutement.save
    redirect_to mount_user_path(current_user), notice: "一緒に行けるといいですね"
  end

  def edit
    redirect_to :update
  end

  def update
    Reculutement.decide_mountain(params, current_user.id)
    redirect_to mount_user_path(current_user)
  end
end
