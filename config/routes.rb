Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'root#index'
  namespace :api do
    get 'message', to: 'message#random_greeting'
  end  
end
