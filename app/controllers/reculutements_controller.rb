class ReculutementsController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.get_participations(current_user)
  end

  def show
    #code
  end

  def create
    @reculutement = current_user.reculutements.build(
                    promise_id: params[:promise_id],)
    @reculutement.save
    redirect_to user_path, notice: "一緒に行けるといいですね"
  end

  def edit
    redirect_to :update
  end

  def update
    Reculutement.decide_mountain(params, current_user.id)
    redirect_to user_path
  end
end
