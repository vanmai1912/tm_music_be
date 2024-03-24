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
    post 'login', to: 'auth#login'

    resources :singers, only: [:index, :show]
    resources :authors, only: [:index, :create, :show]
    resources :albums, only: [:index, :create, :show]
    resources :songs, only: [:index, :create, :show]

    namespace :me do
      resources :albums, only: [:index, :create, :show]
      resources :histories, only: [:index, :create]
      resources :likes, only: [:index, :create] do
        collection do
          delete 'destroys'
        end
      end
    end
  end

  match '*path', to: 'api/application#options', via: :options

end
