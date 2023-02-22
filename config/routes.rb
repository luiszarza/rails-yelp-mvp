Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "restaurants#index"

  # Defines the route for the index action of the restaurants controller

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
end
