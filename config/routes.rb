Rails.application.routes.draw do
  Rails.application.routes.draw do
    resources :users, only: [:new, :create, :show, :update, :edit]
  end
end
