Rails.application.routes.draw do
  resources :incomes
  resources :sources
  resources :expenses
  devise_for :users
end
