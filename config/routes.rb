Rails.application.routes.draw do

  resources :singers
  resources :albums
  resources :artists
  resources :genres
  resources :clients, only: [:index]
  resources :payments, only: [:index] 
  resources :songs do
    member do
      get 'duration'
    end
  end
  devise_for :users
  root to: "dashboard#index"

  resources :dashboard, only: [] do 
    collection do
      get :client_chart
      get :payment_chart
      get :status_chart
    end 
  end
  namespace :api, defaults: { format: :json } do
    post 'login', to: 'auth#login'
    post 'google_oauth2', to: 'auth#google_oauth2'

    resources :singers, only: [:index, :show] do 
      collection do
        get 'albums'
      end
    end
    resources :genres, only: [:index, :show] do
      member do
        get :albums
        get :related
      end
    end
    resources :authors, only: [:index, :create, :show]
    resources :albums, only: [:index, :create, :show] do
      member do
        get :related
      end
    end
    resources :songs, only: [:index, :create, :show] do 
      resources :comments, only: [:index]
    end

    resources :comments, only: [:show]    

    namespace :me do
      resources :rooms, only: [:index]
      resources :invitations, only: [:index, :create, :show]
      resources :suggest, only: [:index]
      resources :albums, only: [:index, :create, :show, :destroy, :update] do
        member do
          post 'add_song_ids'
          post 'remove_song_ids'
          post :songs
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
    post '/create-checkout-session', to: 'payments#create_checkout_session'
    post '/create-checkout-submission', to: 'payments#create_checkout_submission'
    resources :stripe_webhooks, only: [:create]
  end

  match '*path', to: 'api/application#options', via: :options

end
