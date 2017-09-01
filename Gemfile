# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# base
gem 'devise'
gem 'rails', '~> 5.1.3'
gem 'therubyracer', platforms: :ruby, github: 'cowboyd/therubyracer'

# database
gem 'mysql2', '>= 0.3.18', '< 0.5'

# server
gem 'puma', '~> 3.7'

# view
gem 'bootstrap', '~> 4.0.0.beta'
gem 'jquery-rails'
gem 'popper_js', '~> 1.11.1'
gem 'sass-rails', '~> 5.0'
gem 'tether-rails'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'annotate'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'overcommit'
  gem 'rubocop'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end
