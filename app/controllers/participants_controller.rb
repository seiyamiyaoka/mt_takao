class ParticipantsController < ApplicationController
  before_action :authenticate_user!
  def index
    @promises = Promise.check_promise(params[:name], current_user)
    @my_promises = Promise.my_promises(current_user) if Promise.cheeeeeck(params[:name])
  end
end
