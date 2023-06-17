Rails.application.routes.draw do

  get 'confirmations', to: 'confirmations#index' , as: 'confirmations'
  get 'confirmations/:id', to: 'confirmations#show', as: 'confirmation'


  get '/books', to: 'books#index'
  get '/books/:id', to: 'books#show', as: 'book'
  delete '/books/:id', to: 'books#destroy'



  resources :housings  do
    resources :reviews, only: %i[create]
    resources :books, only: %i[create]
  end


  devise_for :users
  root to: "pages#home"
  get '/books', to: 'books#index'

end
