Rails.application.routes.draw do
  resources :users
  resource :session
  namespace :api do
    resources :boards
    resources :lists
    resources :cards
  end
  root to: 'root#index'
end
