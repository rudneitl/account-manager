Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"

  resources :categories
  resources :sources

  resources :periods do
    resources :incomes
    resources :expenses
  end
end
