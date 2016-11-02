source 'https://rubygems.org'

# core
gem 'rails', '4.2.3'
gem 'sdoc', '~> 0.4.0', group: :doc

# db/model
gem 'mysql2', '~> 0.3.21'

# front
gem 'sass-rails', '~> 5.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'uglifier', '>= 1.3.0'
gem "twitter-bootstrap-rails"
gem 'slim-rails'
gem 'kaminari'
gem "font-awesome-rails"

# configuration
gem 'config'
gem 'dotenv-rails'
gem 'unicorn'
# verify
gem 'devise'

# analy
gem 'google-analytics-rails', '1.1.0'

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails'
  gem 'factory_girl_rails'

  # Debug
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'hirb'
  gem 'hirb-unicode'

  # Test, Seed
  gem 'faker'
end

group :development do
   # Environment
  gem 'annotate'
  gem 'letter_opener'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'web-console', '~> 2.0'
  gem 'rack-mini-profiler', require: false

  # Debug
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
  gem 'quiet_assets'
  gem 'view_source_map'

  # code check
  gem 'rubocop'
  gem 'rails_best_practices'

  gem 'capistrano', '3.6.1'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano-bundler'
  gem 'capistrano3-unicorn'
end

group :test do
  # Test
  gem 'capybara'
  gem 'capybara-email'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
end
