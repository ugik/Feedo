source 'http://rubygems.org'

gem 'rails', '3.1.1'
gem 'sqlite3'
gem 'json'
gem 'mysql2'
gem 'therubyracer'
gem 'haml'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  # gems specifically for Heroku go here
  gem 'pg'
  gem 'therubyracer-heroku'
end

group :development do
  # for converting erb to haml
  gem 'hpricot'
  gem 'ruby_parser'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
  gem 'rspec-rails', '2.6.1'
  gem 'webrat', '0.7.1'
end
gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

