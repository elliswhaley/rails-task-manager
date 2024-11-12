Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: "tasks#home"
  get "/index", to: "tasks#index"
  get "/index/:id", to: "tasks#show", as: "task"
  get "/index/:id/edit", to: "tasks#edit", as: "edit"
  patch "/index/:id", to: "tasks#update"
  get "/new", to: "tasks#new"
  post "/tasks", to: "tasks#create"
  delete "/index/:id", to: "tasks#destroy"
end
