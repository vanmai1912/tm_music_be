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
    post 'google_oauth2', to: 'auth#google_oauth2'

    resources :singers, only: [:index, :show] do 
      collection do
        get 'albums'
      end
    end
    resources :genres, only: [:index, :show]
    resources :authors, only: [:index, :create, :show]
    resources :albums, only: [:index, :create, :show]
    resources :songs, only: [:index, :create, :show] do 
      resources :comments, only: [:index]
    end

    resources :comments, only: [:show]    

    namespace :me do
      resources :invitations, only: [:index, :create, :show]
      resources :albums, only: [:index, :create, :show, :destroy] do
        member do
          post 'add_song_ids'
          post 'remove_song_ids'
        end
      end
      resources :histories, only: [:index, :create]
      resources :likes, only: [:index, :create] do
        collection do
          delete 'destroys'
        end
      end
      get 'search'
      resources :follows, only: [:index, :create, :destroy]
      resources :comments, only: [:create, :destroy, :show]
    end

    resources :me, only: [:index]
  end

  match '*path', to: 'api/application#options', via: :options

end
