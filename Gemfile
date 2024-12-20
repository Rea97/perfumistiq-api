# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.2.2'

gem 'blueprinter'

gem 'devise'

gem 'devise-jwt'

gem 'dotenv-rails'

gem 'jwt'

gem 'pg', '~> 1.5', '>= 1.5.8'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
gem 'rack-cors'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.1.3', '>= 7.1.3.4'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '>= 5.0'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[windows jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri windows]
  gem 'factory_bot_rails'
  gem 'pry', '~> 0.14.2'
  gem 'rspec-rails', '~> 7.0.0'
  gem 'rubocop', '~> 1.66', require: false
  gem 'rubocop-factory_bot', '~> 2.26', '>= 2.26.1', require: false
  gem 'rubocop-rails', '~> 2.26', '>= 2.26.1', require: false
  gem 'rubocop-rspec', '~> 3.0', '>= 3.0.5', require: false
  gem 'rubocop-rspec_rails', '~> 2.30', require: false
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  gem 'shoulda-matchers', '~> 6.0'
end

gem 'dockerfile-rails', '>= 1.6', group: :development
