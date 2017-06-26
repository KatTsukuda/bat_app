Rails.application.routes.draw do
  root to: 'bats#index'
  resources :bats
end
