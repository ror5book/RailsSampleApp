# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  mount Sidekiq::Web, at: '/sidekiq'
end
