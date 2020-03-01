# frozen_string_literal: true

Rails.application.routes.draw do
  filter :locale

  mount Spree::Core::Engine, at: '/back'

  root 'home#index'
end
