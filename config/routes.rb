Rails.application.routes.draw do
  root to: 'bats#index'
  resources :bats, only: [:index, :new, :create, :show]

  get "/bats", to: "bats#index"
  get "/bats/new", to: "bats#new"
  post "/bats", to: "bats#create"
  get "/bats/:id", to: "bats#show"

end
