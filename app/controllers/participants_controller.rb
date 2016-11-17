class ParticipantsController < ApplicationController
  before_action :authenticate_user!
  def index
    if params[:name] == nil || params[:name] == "my"
      promises_id = Promise.where(user_id: current_user.id).pluck(:id)
      reculutements_user_id = Reculutement.where(promise_id: promises_id).pluck(:user_id)
      @participations = User.find(reculutements_user_id)
    elsif params[:name] == "your"
      # target_user = []
      # a = Reculutement.where(user_id: current_user.id).pluck(:promise_id)
      # return if a.blank?
      # b = Reculutement.where(user: current_user.id).pluck(:user_id)
      # promise_user = Promise.find(a).first.user_id
      # target_user = b, promise_user
      @participations = current_user.reculutements
    end
  end
end
