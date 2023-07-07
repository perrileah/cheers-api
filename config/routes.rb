Rails.application.routes.draw do
  get "/breweries" => "breweries#index"
  get "/breweries/:id" => "breweries#show"
  post "/breweries" => "breweries#create"
  patch "/breweries/:id" => "breweries#update"
  delete "/breweries/:id" => "breweries#destroy"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/checkins" => "checkins#index"
  post "/checkins" => "checkins#create"
  get "/checkins/:id" => "checkins#show"
  patch "/checkins/:id" => "checkins#update"
  delete "/checkins/:id" => "checkins#destroy"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
