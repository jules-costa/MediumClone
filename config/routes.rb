Rails.application.routes.draw do

  namespace :api do
    get 'images/index'
  end

  namespace :api do
    get 'images/create'
  end

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:new, :create]
    resource :session, only: [:new, :create, :destroy]
    resources :stories
  end

  root to: "static_pages#root"
end
