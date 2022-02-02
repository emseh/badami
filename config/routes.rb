# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#index'
  get 'about', to: 'pages#about'
  resources :articles
end
