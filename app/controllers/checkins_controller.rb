class CheckinsController < ApplicationController
  def index
    @checkins = Checkin.all
    render json: @checkins
  end

  def create
    @checkin = Checkin.new(
      brewery_id: params[:brewery_id],
      user_id: params[:user_id],
      rating: params[:rating],
      image_url: params[:image_url],
      comments: params[:comments],
    )
    if @checkin.save
      render :show
    else
      render json: { errors: @checkin.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @checkin = Checkin.find_by(id: params[:id])
    render :show
  end

  def update
    @checkin = Checkin.find_by(id: params[:id])
    @checkin.update(
      brewery_id: params["brewery_id"] || @checkin.brewery_id,
      user_id: params["user_id"] || @checkin.user_id,
      rating: params["rating"] || @checkin.rating,
      image_url: params["image_url"] || @checkin.image_url,
      comments: params["comments"] || @checkin.comments,
    )
    if @checkin.save
      render :show
    else
      render json: { errors: @checkin.errors.full_messages }
    end
  end

  def destroy
    @checkin = Checkin.find_by(id: params[:id])
    @checkin.destroy
    render json: { message: "Checkin destroyed successfully" }
  end
end
