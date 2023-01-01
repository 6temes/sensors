# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.0'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails'

# Use postgresql as the database for Active Record
gem 'pg'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Use Tailwind CSS [https://github.com/rails/tailwindcss-rails]
gem 'tailwindcss-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Redis adapter to run Action Cable in production
gem 'redis'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# SwitchBot API client for Ruby
gem 'switchbot'

# Multithreaded, Postgres-based, ActiveJob backend for Ruby on Rails.
gem 'good_job'

# Create beautiful JavaScript charts with one line of Ruby
gem 'chartkick'

# The simplest way to group temporal data
gem 'groupdate'

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt"

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem 'image_processing'

# Simple health check of Rails app for use with uptime checking sites like newrelic and pingdom
gem 'health_check'

# Sentry SDKs
gem 'sentry-rails'
gem 'sentry-ruby'
gem 'sentry-sidekiq'

group :production do
  # Official AWS Ruby gem for Amazon Simple Storage Service
  # gem 'aws-sdk-s3', require: false

  # Rack middleware for blocking & throttling.
  gem 'rack-attack'

  # Abort requests that are taking too long.
  gem 'rack-timeout', require: 'rack/timeout/base'

  # Fix request.ip and request.remote_ip in rails when using cloudflare
  gem 'cloudflare-rails'
end

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]

  # Lint ERB or HTML files
  gem 'erb_lint', require: false

  # Rubocop takes care of the quality of the code
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec'
  gem 'rubocop-thread_safety'

  # Required for prettier
  gem 'prettier_print'
  gem 'syntax_tree'
  gem 'syntax_tree-haml'
  gem 'syntax_tree-rbs'

  # A static analysis security vulnerability scanner for Ruby on Rails applications
  gem 'brakeman'

  # A Rake task gem that helps you find the unused routes and controller actions for your Rails 3+ app
  gem 'traceroute'

  # A library for generating fake data such as names, addresses, and phone numbers.
  gem 'faker'

  # RSpec for Rails 5+
  gem 'rspec-rails'

  # A library for setting up Ruby objects as test data.
  gem 'factory_bot_rails'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Better error page for Rack apps
  gem 'better_errors'
  gem 'binding_of_caller'

  # Annotate Rails classes with schema and routes info
  gem 'annotate'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Preview mail in the browser instead of sending.
  gem 'letter_opener'

  # Live reload gem for Hotwire Rails apps.
  gem 'hotwire-livereload'
end

group :test do
  # Acceptance test framework for web applications
  gem 'capybara'
  gem 'webdrivers'

  # Code coverage for Ruby with a powerful configuration library and automatic merging of coverage across test suites
  # gem 'simplecov', require: false

  # Library for stubbing and setting expectations on HTTP requests in Ruby.
  # gem 'webmock'
end
