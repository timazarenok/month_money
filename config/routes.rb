Rails.application.routes.draw do
  devise_for :users
  resources :product_lists
  resources :product_list_items
  resources :product_categories
  resources :accounts
  resources :months
  resources :account_items
  resources :categories

  root "home#index"
end
