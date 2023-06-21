Rails.application.routes.draw do
  get "/breweries" => "breweries#index"
end
