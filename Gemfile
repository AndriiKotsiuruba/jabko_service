source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.3"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.1', '>= 7.1.3.4'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem "cssbundling-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Provides the generator settings required for Rails to use Slim
gem 'slim-rails', '~> 3.6', '>= 3.6.3'

group :development do
  # The Listen gem listens to file modifications and notifies you about the changes.
  gem 'listen', '~> 3.8'

  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '~> 4.2', '>= 4.2.1'

  # Spring speeds up development by keeping your application running in the background.
  # Read more: https://github.com/rails/spring
  gem 'spring', '~> 4.1', '>= 4.1.3'

  # A Ruby static code analyzer and formatter
  gem 'rubocop',             '~> 1.60', '>= 1.60.2', require: false
  gem 'rubocop-performance', '~> 1.20', '>= 1.20.2', require: false
  gem 'rubocop-rails',       '~> 2.23', '>= 2.23.1', require: false
  gem 'rubocop-rspec',       '~> 2.26', '>= 2.26.1', require: false

  # A tool to help lint your ERB or HTML files using the included linters or by writing your own.
  gem 'erb_lint', '>= 0.5.0', require: false

  # Help to kill unused eager loading
  gem 'bullet', '~> 7.1', '>= 7.1.6'

  # Help to kill N+1 queries
  gem 'pg_query', '~> 5.1'
  gem 'prosopite', '~> 1.4', '>= 1.4.2'

  # Preview email in the default browser instead of sending it
  gem 'letter_opener_web', '~> 2.0'

  # Automatically generate an entity-relationship diagram (ERD) for your Rails models
  # gem 'rails-erd', '~> 1.7', '>= 1.7.2'

  # Active Record Doctor helps to keep the database in a good shape
  gem 'active_record_doctor', '= 1.10'
end

group :test do
  # Strategies for cleaning databases. Can be used to ensure a clean slate for testing.
  gem 'database_cleaner', '~> 2.0', '>= 2.0.2'

  # Retry intermittently failing rspec examples
  gem 'rspec-retry', '~> 0.6.2'

  # Provides one-liners to test common Rails functionality
  gem 'shoulda-matchers', '~> 6.1'

  # Library for stubbing and setting expectations on HTTP requests
  gem 'webmock', '~> 3.19', '>= 3.19.1'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  # Shim to load environment variables from .env into ENV in development
  gem 'dotenv-rails', '~> 2.8', '>= 2.8.1'

  # A framework and DSL for defining and using factories
  gem 'factory_bot_rails', '~> 6.4', '>= 6.4.3'

  # Used to easily generate fake data: names, addresses, phone numbers, etc
  gem 'faker', '~> 3.2', '>= 3.2.3'

  # Testing framework for Rails
  gem 'rspec-rails', '~> 6.1', '>= 6.1.1'

  # Annotate Rails classes with schema and routes info
  gem 'annotate', '~> 3.2'

  # rswag
  gem 'rswag-specs', '~> 2.13'

  # Ruby applications tests profiling tools
  gem 'test-prof', '~> 1.3', '>= 1.3.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
