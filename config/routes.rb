Rails.application.routes.draw do
  root 'street_arts#index'
  devise_for :users
  resources :likes
  resources :street_arts do
    resources :likes
  end
end
