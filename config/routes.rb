Rails.application.routes.draw do
  resources :housings
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'pages/example', to: 'pages#example'
  # Defines the root path route ("/")
  # root "articles#index"
end
