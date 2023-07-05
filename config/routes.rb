Rails.application.routes.draw do
  resources :checkins

  get "/breweries" => "breweries#index"
  get "/breweries/:id" => "breweries#show"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
