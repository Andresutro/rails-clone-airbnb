Rails.application.routes.draw do
  get '/books', to: 'books#index'
  get '/books/:id', to: 'books#show', as: 'book'
  delete '/books/:id', to: 'books#destroy'
  


  resources :housings  do
    resources :reviews, only: %i[create]
    resources :books, only: %i[create]
  end




  #shallow
  devise_for :users
  root to: "pages#home"
  get '/books', to: 'books#index'




  # get '/home', to: 'pages#home'
  # post '/offers', to: 'offers#index'
  # post '/products', to: 'products#create'
  # put '/products/:id', to: 'products#update'
  # delete '/products/:id', to: 'products#destroy'
  # post '/bookings', to: 'bookings#create'
  # post '/reviews', to: 'reviews#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # get 'pages/example', to: 'pages#example'
  # Defines the root path route ("/")
  # root "articles#index"
end
