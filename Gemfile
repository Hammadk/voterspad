source 'https://rubygems.org'

ruby "2.2.2"
gem 'rails', '4.2.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'

gem 'puma'
gem 'newrelic_rpm'
gem "rack-timeout"
gem 'dalli'

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

group :development do
  gem "foreman"
  gem "better_errors"
  gem "binding_of_caller"
end

group :development, :test do
  gem 'sqlite3'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'sqlite3'
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-remote'
  gem 'pry-stack_explorer'
  gem 'pry-rescue'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
