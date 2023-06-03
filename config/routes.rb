Rails.application.routes.draw do
  resources :housings
  resources :bookings
  devise_for :users
  root to: "pages#home"
  get '/home', to: 'pages#home'
  post '/offers', to: 'offers#index'
  post '/products', to: 'products#create'
  put '/products/:id', to: 'products#update'
  delete '/products/:id', to: 'products#destroy'
  post '/bookings', to: 'bookings#create'
  post '/reviews', to: 'reviews#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
