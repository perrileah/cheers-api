Rails.application.routes.draw do
  get "/breweries" => "breweries#index"
  get "/breweries/:id" => "breweries#show"

  get "/checkins" => "checkins#index"
  post "/checkins" => "checkins#create"
  get "/checkins/:id" => "checkins#show"
  patch "/checkins/:id" => "checkins#update"
  delete "/checkins/:id" => "checkins#destroy"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
