source 'https://rubygems.org'

ruby '2.1.2'

gem 'rails', '4.2.4'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'slim-rails'
gem 'high_voltage', '~> 2.4.0'
gem 'foreman'
gem 'foundation-rails'
gem 'websocket-rails'
gem 'websocket-driver', '0.6.2'
gem 'faye-websocket', '0.10.0'
gem 'sidekiq-unique-jobs'
gem 'rack-google-analytics'
gem 'pundit'

source 'https://rails-assets.org' do
  gem 'rails-assets-bxslider-4'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.3.0'
end

group :test do
  gem 'simplecov', require: false
  gem 'shoulda-matchers', '~> 2.8.0', require: false
  gem 'rspec-sidekiq'
end

group :development do
  gem 'rubocop', require: false
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :production do
  gem 'rails_12factor'
end
