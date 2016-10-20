source 'https://rubygems.org'

ruby RUBY_VERSION

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.7.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'

# A set of Rails responders to dry up your application
gem 'responders', '~> 2.3'

# Flexible authentication solution for Rails with Warden
gem 'devise', '~> 4.2'
# Simple authorization solution for Rails which is decoupled from user roles
gem 'cancancan', '~> 1.15'

# bootstrap-sass is a Sass-powered version of Bootstrap 3
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Slim as handler for HTML
gem 'slim-rails', '~> 3.1', '>= 3.1.1'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# jQuery plugin for drop-in fix binded events problem caused by Turbolinks
gem 'jquery-turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use Puma as the app server
gem 'puma'

# Annotate Rails classes with schema and routes info
gem 'annotate'

# Rename the application
gem 'rails-rename', '~> 1.0.0'

group :production do
  # Makes running your Rails app easier. Based on the ideas behind 12factor.net
  gem 'rails_12factor'
  # Rails 3 helpers to manage google analytics tracking. Mostly intended for small to medium websites
  gem 'google-analytics-rails', '1.1.0'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # MailCatcher runs a super simple SMTP server which catches any message sent to it to display in a web interface
  gem 'mailcatcher', '~> 0.6.5'
  # rspec-rails is a testing framework for Rails 3+
  gem 'rspec-rails', '~> 3.5', '>= 3.5.2'
  # Capybara is an integration testing tool for rack based web applications
  gem 'capybara', '~> 2.10', '>= 2.10.1'
  # Capybara for Rails
  gem 'capybara-rails', '~> 0.0.2'
  # factory_girl provides a framework and DSL for defining and using factories
  gem 'factory_girl_rails', '~> 4.7'
  # Faker, a port of Data::Faker from Perl, is used to easily generate fake data: names, addresses, phone numbers, etc
  gem 'faker', '~> 1.6', '>= 1.6.6'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # A static analysis security vulnerability scanner for Ruby on Rails applications
  gem 'brakeman', require: false
  # Interactively exploring objects
  gem 'pry-rails'
  # bundler-audit provides patch-level verification for Bundled apps.
  gem 'bundler-audit', '~> 0.5.0'
  # Generate a diagram based on application's AR models
  gem 'rails-erd'
  # Configurable tool for writing clean and consistent Slim templates
  gem 'slim_lint', '~> 0.8.2'
  # Configurable tool for writing clean and consistent SCSS
  gem 'scss_lint', '~> 0.50.2'
  # Automatic Ruby code style checking tool. Aims to enforce the community-driven Ruby Style Guide
  gem 'rubocop', '~> 0.44.1'
end
