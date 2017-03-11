Rails.application.routes.draw do
  root 'street_arts#index'
  devise_for :users
  resources :street_arts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
