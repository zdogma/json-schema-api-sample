# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'sites#index'

  resources :users, only: %i(index show)
end
