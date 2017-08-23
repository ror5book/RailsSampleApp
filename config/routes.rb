# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users

  root 'home#index'
  resources :posts, only: [:create]

  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web, at: '/sidekiq'
  end
end
