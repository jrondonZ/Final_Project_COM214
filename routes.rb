Rails.application.routes.draw do
  # Welcome / landing page
  root "welcome#index"

  # Authentication
  get  "signup",  to: "users#new"
  post "signup",  to: "users#create"
  get  "login",   to: "sessions#new"
  post "login",   to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  resources :users, only: [:new, :create, :destroy]

  # Categories and ToDos
  # We define them here so the navbar links work from day one
  resources :categories
  resources :todos do
    collection do
      get :complete   # /todos/complete
    end
  end
end