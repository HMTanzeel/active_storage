Rails.application.routes.draw do
  devise_for :users
  root 'sessions#home'
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#login'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
