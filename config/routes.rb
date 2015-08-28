Rails.application.routes.draw do
  resources :expenses
  resources :categories
  devise_for :users
end
