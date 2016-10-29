class ReculutementsController < ApplicationController
  def index
    @promises = Promise.all
  end
  def create
    @reculutement = Reculutement.new(
                    subscription_user_id: current_user.id,
                    participation_user_id: params[:user_id],
                    promise_id: params[:promise_id])
    @reculutement.save
    redirect_to mount_user_path(current_user), notice: "一緒に行けるといいですね"
  end
  def reculutement_index
    reculutements = Reculutement.where(participation_user_id: current_user.id)
    reculutement_users = reculutements.map(&:subscription_user_id)
    @users = User.find(reculutement_users)
  end
end
