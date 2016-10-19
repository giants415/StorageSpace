Rails.application.routes.draw do
  get 'errors/not_found'

  root to: "site#show"

  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

  get "/users", to: "users#index"
  get "/users/new", to: "users#new", as: "new_user"
  get "/users/:id", to:"users#show", as: "user"
  post "/users", to: "users#create"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy", as: "destroy_user"

  resources :spaces do
    resources :transactions
  end

  resources :transactions do
    resources :charges
  end

  resources :charges
  resources :site

end
