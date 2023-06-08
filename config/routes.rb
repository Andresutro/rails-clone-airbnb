Rails.application.routes.draw do
  get 'reviews/new'
  resources :housings do
    resources :reviews, only: %i[create]
    resources :bookings, only: %i[new create]
  end

  get '/bookings', to: 'bookings#index'

  #shallow  
  devise_for :users
  root to: "pages#home"
  # get '/home', to: 'pages#home'
  # post '/offers', to: 'offers#index'
  # post '/products', to: 'products#create'
  # put '/products/:id', to: 'products#update'
  # delete '/products/:id', to: 'products#destroy'
  # post '/bookings', to: 'bookings#create'
  # post '/reviews', to: 'reviews#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'pages/example', to: 'pages#example'
  # Defines the root path route ("/")
  # root "articles#index"
end
