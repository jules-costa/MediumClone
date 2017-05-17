Rails.application.routes.draw do
  get 'stories/new'

  get 'stories/create'

  get 'stories/edit'

  get 'stories/update'

  get 'stories/destroy'

  get 'stories/show'

  get 'stories/index'

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:new, :create]
    resource :session, only: [:new, :create, :destroy]
  end

  root to: "static_pages#root"
end
