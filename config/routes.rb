Rails.application.routes.draw do
  resources :pictures
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :update, :edit]

  resources :pictures do
    collection do
      post :confirm
    end
  end
end
