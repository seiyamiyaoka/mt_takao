class PromisesController < ApplicationController
  before_action :authenticate_user!
  def index
    @promises = Promise.where.not(user_id: current_user.id)
  end

  def new
    @promise = Promise.new
  end

  def create
    @promise = current_user.promises.build(params_promise)

    if @promise.save
      redirect_to user_path, notice: "登山日を登録しました！"
    else
      render :new
    end
  end

  private

  def params_promise
    params.require(:promise).permit(:promise_time, :meet_time, :title, :content, :limit_time)
  end
end
