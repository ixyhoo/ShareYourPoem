Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

root "home#index"
  get "home", to: "home#index"
  # Defines the root path route ("/")
  # root "articles#index"

  resources :poesies, only: [:show, :index, :new, :create, :edit, :update, :destroy]
end
