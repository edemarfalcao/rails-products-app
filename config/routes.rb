Rails.application.routes.draw do
  devise_for :users
  get 'products' => 'products#index', as: 'products'
  post 'products' => 'products#create'
  get 'products/new' => 'products#new', as: 'new_product'
end
