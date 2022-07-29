Rails.application.routes.draw do
  get 'products/buy'
  get 'reports/get_by_vendor'
  get 'reports/get_by_type'
  devise_for :users
  root 'products#home'
  resources :products
  get 'reports/index' => 'reports#index'
  get 'reports/show' => 'reports#show'
  get 'reports/edit' => 'reports#edit'
end
