class PromisesController < ApplicationController
  def new
    @promise = Promise.new
  end

  def create
    @promise = current_user.promises.build(params_promise)
    @promise.save
    redirect_to mount_user_path(current_user)
  end
  private
  def params_promise
    params.require(:promise).permit(:promise_time, :meet_time)
  end
end
