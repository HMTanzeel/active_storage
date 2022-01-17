Rails.application.routes.draw do
  get 'signup/index'
  root "messages#index"
  resources :signup, only: [:new, :create, :index]
  resources :messages, only: [:new, :create, :index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
