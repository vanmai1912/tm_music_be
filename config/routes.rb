Rails.application.routes.draw do

  resources :singers
  resources :albums
  resources :artists
  resources :genres
  resources :songs do
    member do
      get 'duration'
    end
  end
  devise_for :users
  # root to: "overview#index"

  namespace :api, defaults: { format: :json } do
    # resources :types
    # resources :singers
    # resources :users
    post 'login' => 'auth#login'
    resources :singers
    resources :authors
    resources :albums
    resources :songs
  end

end
