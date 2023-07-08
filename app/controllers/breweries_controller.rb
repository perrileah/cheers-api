class BreweriesController < ApplicationController
  def index
    @breweries = Brewery.all
    render json: @breweries
  end

  def create
    @brewery = Brewery.create!(
      name: params[:name],
      address: params[:address],
      city: params[:city],
      state: params[:state],
      zip: params[:zip],
      tap_list: params[:tap_list],
      longitude: params[:longitude],
      latitude: params[:latitude],
      website_url: params[:website_url],
    )
    render :show
  end
end
