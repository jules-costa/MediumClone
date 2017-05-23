Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:new, :create]
    resource :session, only: [:new, :create, :destroy]
    resources :stories do
      resources :comments, only: [:create, :edit, :update, :destroy]
    end
  end

  root to: "static_pages#root"
end
