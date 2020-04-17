# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :customers
  filter :locale

  mount Spree::Core::Engine, at: '/menu'

  get '/profile', to: 'profile#index'
  get '/profile/order', to: 'profile#order'
  get '/home/select/:id', to: 'home#select'

  get '/products/select/:id', to: 'spree/products#select'
  get '/products', to: 'spree/products#index'

  post '/orders/populate', to: 'spree/orders#populate'

  get '/credits', to: 'credits#index'



  namespace :customer do
    root :to => "profile#index"
  end


  root 'home#index'
end


Spree::Core::Engine.routes.draw do
  resources :orders, except: [:index, :new, :create, :destroy] do
    post :populate, on: :collection
    resources :coupon_codes, only: :create
  end
end
