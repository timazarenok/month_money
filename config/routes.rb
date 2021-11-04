Rails.application.routes.draw do
  resources :product_lists
  resources :product_list_items
  resources :product_categories
  resources :accounts
  resources :months
  resources :account_items
  resources :categories

  root "home#index"
end
