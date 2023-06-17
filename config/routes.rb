Rails.application.routes.draw do
  get 'reviews/new'
  resources :housings do
    resources :reviews, only: %i[create]
    resources :books, only: %i[create]
    resources :bookings

  end

  resources :books, only: %i[index]



  #shallow
  devise_for :users
  root to: "pages#home"
  get '/books', to: 'books#index'


  get '/books', to: 'books#index'
  post '/books', to: 'books#create'
  get '/books/new', to: 'books#new', as: 'new_book'
  get '/books/:id/edit', to: 'books#edit', as: 'edit_book'
  get '/books/:id', to: 'books#show', as: 'book'
  patch '/books/:id', to: 'books#update'
  put '/books/:id', to: 'books#update'
  delete '/books/:id', to: 'books#destroy'

  #get '/home', to: 'pages#home'
  # post '/offers', to: 'offers#index'
  # post '/products', to: 'products#create'
  # put '/products/:id', to: 'products#update'
  # delete '/products/:id', to: 'products#destroy'
  # post '/bookings', to: 'bookings#create'
  # post '/reviews', to: 'reviews#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 #get '/housings', to: 'housings#index', as: 'housings'

  # get 'pages/example', to: 'pages#example'
  # Defines the root path route ("/")
  # root "articles#index"
end
