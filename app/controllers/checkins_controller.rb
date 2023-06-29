class CheckinsController < ApplicationController
  def index
    @checkins = Checkin.all
    render json: @checkins
  end

  def create
    @checkin = Checkin.create(
      brewery_id: params[:brewery_id],
      user_id: params[:user_id],
      rating: params[:rating],
      image: params[:image],
      comments: params[:comments],
    )
    
    render :show
  end

  def show
    @checkin = Checkin.find_by(id: params[:id])
    render :show
  end
end
