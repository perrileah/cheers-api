class BreweriesController < ApplicationController
  def index
    response = HTTP.get("https://api.openbrewerydb.org/v1/breweries?by_state=illinois")
    data = JSON.parse(response.body)
    render json: data
  end

  # def show
  #   @checkin = Checkin.find_by(id: params[:id])
  #   render :show
  # end
end
