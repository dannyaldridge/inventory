source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

gem 'nokogiri'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

gem 'foundation-rails'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :test do
  # Use sqlite3 for dev and test db
  gem 'sqlite3'

  gem 'rspec-rails', '~> 3.0.0.beta'
	gem 'capybara'
	gem 'cucumber-rails', require: false
	gem 'database_cleaner'
  gem 'factory_girl_rails', '~> 4.0' 
  gem 'spork', '~> 1.0rc' 
  gem 'shoulda-matchers'

  gem 'rubocop'
end

gem 'simplecov', require:  false, group: :test

# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

group :production do
  # Use unicorn as the app server
  gem 'unicorn'

  # Use postgres as the database for Active Record
  gem 'pg'
end

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

