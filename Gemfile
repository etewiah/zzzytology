source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'heroku'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#gem "yaml_db"
#gem 'sqlite3'

gem "pg", :group => :production
gem "sqlite3-ruby", :group => :development

# adding figaro for ENV configs
gem "figaro"

gem "haml"
gem 'twitter-bootstrap-rails'

# gem to allow use of handlebar templates directly from Ruby:
gem 'handlebars'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby
  gem 'handlebars_assets'
  gem 'uglifier', '>= 1.0.3'
end



group :development do
  gem 'ffaker'
  gem 'guard-rspec'
  gem 'growl'
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'debugger'
  gem "rails-erd"
end

group :test do
  gem 'rspec-rails'
  gem "shoulda-matchers"
  gem 'database_cleaner'
  gem 'capybara'
  gem 'launchy'
  gem 'jasmine'
  gem 'simplecov', :require => false
end


gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
