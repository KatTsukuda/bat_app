Rails.application.routes.draw do
  root to: 'bats#index'
  resources :bats, only: [:index, :new, :show, :create]

  get "/bats", to: "bats#index"
  get "/bats", to: "bats#new"
  get "/bats/:id", to: "bats#show"
  post "/creatures", to: "creatures#create"

end
