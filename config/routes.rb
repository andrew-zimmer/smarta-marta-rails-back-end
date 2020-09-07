Rails.application.routes.draw do
  resources :quick_picks
  devise_for :users

  namespace :v1, defaults: { format: :json } do
    resources :sessions, only: [:create, :destroy]
    resources :users, only: [:create] do
    end
    resources :quick_picks, only: [:create, :destroy]
  end
end
