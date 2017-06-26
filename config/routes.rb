Rails.application.routes.draw do
  root to: 'bats#index'
  resources :bats, only: [:index, :new, :create, :show, :edit, :update], except: [:destroy]

  get "/bats", to: "bats#index"
  get "/bats/new", to: "bats#new"
  post "/bats", to: "bats#create"
  get "/bats/:id", to: "bats#show"
  get "/bats/:id/edit", to: "bats#edit"
  put "/bats/:id", to: "bats#update"
  delete "/bats/:id", to: "bats#destroy"

end
