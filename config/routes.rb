Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"

  resources :categories
  resources :sources

  resources :fiscal_years, shallow: true do
    resources :periods do
      resources :incomes
      resources :expenses
    end
  end
end
