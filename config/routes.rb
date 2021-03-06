Rails.application.routes.draw do
  resources :pictures
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :update, :edit]
  resources :favorites, only: [:create, :destroy, :show]

  get "users/:id/favorites" => "users#favorites"

  resources :pictures do
    collection do
      post :confirm
    end
  end

  # mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"

  root to: "sessions#new"
end
