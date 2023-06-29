Rails.application.routes.draw do
  get "/breweries" => "breweries#index"
  get "/breweries/:id" => "breweries#show"

  get "/checkins" => "checkins#index"
  post "/checkins" => "checkins#create"
  get "/checkins/:id" => "checkins#show"
  patch "/checkins/:id" => "checkins#update"
  delete "/checkins/:id" => "checkins#destroy"
end
