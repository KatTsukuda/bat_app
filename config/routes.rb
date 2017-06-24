Rails.application.routes.draw do
  root to: 'bats#index'
  resources :bats, only: [:index, :show]

  get "/bats", to: "bats#index"
  get "/bats/:id", to: "bats#show"
end
