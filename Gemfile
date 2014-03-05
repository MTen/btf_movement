source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use postgresql as the database for Active Record

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Helping those who don't have frontend skillz.
# Tutorial to implement: http://railscasts.com/episodes/328-twitter-bootstrap-basics?view=asciicast
# Docs use http://getbootstrap.com/
# https://github.com/seyhunak/twitter-bootstrap-rails
gem 'twitter-bootstrap-rails'
gem "less-rails"
#Simplifies using the tumlbr api
# API Docs: http://www.tumblr.com/docs/en/api/v2
# Gem docs: https://github.com/tumblr/tumblr_client
gem 'tumblr_client'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Added the rubyracer for twitter bootstrap
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Removed turbo links and using backbone instead.
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'jquery-turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Adding this gem per https://stackoverflow.com/questions/15354539/heroku-does-not-compile-files-under-assets-pipelines-in-rails-4
# Supposed to fix asset pipeline deployment on heroku
group :production do
  gem 'rails_12factor'
  gem 'pg'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

#Because rspec is better than Test::Unit. Or so I'm told.
group :development, :test do
  gem "rspec-rails", "~> 2.14.0"
  gem "factory_girl_rails", "~> 4.2.1"
  gem 'sqlite3'
end

group :test do
  gem "faker", "~> 1.1.2"
  gem "capybara", "~> 2.1.0"
  gem "database_cleaner", "~> 1.0.1"
  gem "launchy", "~> 2.3.0"
  gem "selenium-webdriver", "~> 2.39.0"
end



# rspec-rails: includes RSpec itself in a wrapper to add some extra Rails-specific features.
# factory_girl_rails: replaces Rails’ default fixtures for feeding test data to the test suite with much more preferable factories.
# faker: generates names, email addresses, and other placeholders for factories.
# capybara: makes it easy to programatically simulate your users’interaction swith your web application.
# database_cleaner: helps make sure each spec run in RSpec begin swith a clean slate,by–you guessed it–cleaning data from the test database.
# launchy: does one thing, but does it well: It opens your default web browser on demand to show you what your application is rendering. Very useful for debugging tests.
# selenium-webdriver: will let us test JavaScript-based browser interactions with Capybara.
