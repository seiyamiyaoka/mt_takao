class ReculutementsController < ApplicationController
  def index
    @promises = Promise.all
  end
  
  def create
    @reculutement = Reculutement.new(
                    participation_id: params[:user_id],
                    promise_id: params[:promise_id])
    @reculutement.save
    redirect_to mount_user_path(current_user), notice: "一緒に行けるといいですね"
  end

  def reculutement_index
    @users = User.get_participations(current_user)
  end
end
