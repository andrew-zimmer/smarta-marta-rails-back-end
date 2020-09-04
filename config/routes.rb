Rails.application.routes.draw do
  devise_for :users

  namespace :v1, defaults: { format: :json } do
    resources :sessions, only: [:create, :destroy]
    resources :users, only: [:create] do
    end
    resources :moods, only: [:create, :destroy]
  end
end
