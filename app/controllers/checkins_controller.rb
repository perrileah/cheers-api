class CheckinsController < ApplicationController
  def index
    @checkins = Checkin.all
    render json: @checkins
  end

  def show
    @checkin = Checkin.find_by(id: params[:id])
    render :show
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

  def update
    @checkin = Checkin.find_by(id: params[:id])
    @checkin.update(
      brewery_id: params[:brewery_id] || @checkin.brewery_id,
      user_id: params[:user_id] || @checkin.user_id,
      rating: params[:rating] || @checkin.rating,
      image: params[:image] || @checkin.image,
      comments: params[:comments] || @checkin.comments,
    )
    # if @checkin.valid? #happy path
    @checkin.save
    render :show
    # else #sad path
    #     render :json {errors: @checkin.errors.full_messages}
    # end

  end

  def destroy
    @checkin = Checkin.find_by(id: params[:id])
    @checkin.destroy
    render json: { message: "Destroyed!" }
  end
end
