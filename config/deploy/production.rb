# frozen_string_literal: true

set :app_eip, '13.114.124.195'

role :app, "admin@#{fetch(:app_eip)}"
role :web, "admin@#{fetch(:app_eip)}"
role :db,  "admin@#{fetch(:app_eip)}"
