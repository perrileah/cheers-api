class CheckinsController < ApplicationController
  def index
    @checkins = Checkin.all
    render json: @checkins
  end
end
