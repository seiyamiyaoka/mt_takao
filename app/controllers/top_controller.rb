class TopController < ApplicationController
  def index
    @user = User.new
    render :index, layout: 'landing_layout'
  end
end
