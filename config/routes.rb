Rails.application.routes.draw do
  root "welcome#index"

  get "/categories", to: "categories#index", as: "categories"
  get "/categories/new", to: "categories#new", as: "new_category"
  post "/categories", to: "categories#create"
  get "/categories/:id", to: "categories#show", as: "category"
  get "/categories/:id/edit", to: "categories#edit", as: "edit_category"
  patch "/categories/:id", to: "categories#update"
  get "/categories/:id/delete", to: "categories#delete", as: "delete_category"
  delete "/categories/:id", to: "categories#destroy"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  # Authentication
  get  "signup",  to: "users#new"
  post "signup",  to: "users#create"
  get  "login",   to: "sessions#new"
  post "login",   to: "sessions#create"
  get "logout", to: "sessions#destroy"

  resources :users, only: [:new, :create, :destroy]

  
  resources :categories
  resources :todos do
    collection do
      get :complete   # /todos/complete
    end
  end
end
