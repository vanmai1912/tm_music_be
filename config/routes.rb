Rails.application.routes.draw do

  
  resources :albums
  resources :artists
  resources :genres
  resources :songs
  devise_for :users
  # root to: "overview#index"

end
