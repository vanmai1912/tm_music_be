Rails.application.routes.draw do
    root "buildings#index"
  
    get "/buildings", to: "buildings#index"
  end