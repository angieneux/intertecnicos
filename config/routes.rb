# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :customers
  filter :locale

  mount Spree::Core::Engine, at: '/menu'

  get '/profile', to: 'profile#index'
  get '/profile/order', to: 'profile#order'

  root 'home#index'
end
