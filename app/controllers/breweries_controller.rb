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
      website_url: params[:website_url],
      longitude: params[:longitude],
      latitude: params[:latitude],
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
      name: params[:name],
      address: params[:address],
      city: params[:city],
      state: params[:state],
      zip: params[:zip],
      tap_list: params[:tap_list],
      website_url: params[:website_url],
      longitude: params[:longitude],
      latitude: params[:latitude],
    )
    render :show
  end

  def destroy
    @brewery = Brewery.find_by(id: params[:id])
    @brewery.destroy
    render json: { message: "Brewery destroyed successfully" }
  end
end
