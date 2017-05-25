Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:new, :create, :show, :edit, :update]
    resource :session, only: [:new, :create, :destroy]
    resources :stories do
      resources :comments, only: [:create, :edit, :update, :destroy]
    end
    resources :follows, only: [:create, :destroy, :index]
    resources :likes, only: [:create, :destroy, :index]
    resources :topics, only: [:create, :index]
  end

  root to: "static_pages#root"
end
