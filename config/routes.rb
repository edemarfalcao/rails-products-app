Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  get 'products' => 'products#index', as: 'products'
  post 'products' => 'products#create'
  get 'products/new' => 'products#new', as: 'new_product'

  namespace :api do
    namespace :v1 do
      get 'products' => 'products#index'
    end
  end
end
