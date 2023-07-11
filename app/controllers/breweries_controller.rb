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

  def show
    @brewery = Brewery.find_by(id: params[:id])
    render :show
  end

  def update
    @brewery = Brewery.find_by(id: params[:id])
    @brewery.update(
      name: params["name"] || @brewery.name,
      address: params["address"] || @brewery.address,
      city: params["city"] || @brewery.city,
      state: params["state"] || @brewery.state,
      zip: params["zip"] || @brewery.zip,
      tap_list: params["tap_list"] || @brewery.tap_list,
      longitude: params["longitude"] || @brewery.longitude,
      latitude: params["latitude"] || @brewery.latitude,
      website_url: params["website_url"] || @brewery.website_url,
    )
    render :show
  end

  def destroy
    @brewery = Brewery.find_by(id: params[:id])
    @brewery.destroy
    render json: { message: "Brewery destroyed successfully" }
  end
end
