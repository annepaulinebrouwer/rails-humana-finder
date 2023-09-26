Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :shops, only: %i[index show new create] do
    resources :reviews, only: [:create]
  end
end
