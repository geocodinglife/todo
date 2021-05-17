source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

gem 'active_model_serializers'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'devise-jwt', '~> 0.8.1'
gem 'dotenv-rails'
gem 'fuubar'
gem 'jsonapi-rails'
gem 'olive_branch'
gem 'puma', '~> 5.0'
gem 'rack-cors'
gem 'rails', '~> 6.1.3', '>= 6.1.3.2'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 2.17'
  gem 'jsonapi-rspec'
  gem 'rspec-rails', '~> 5.0.0'
end

group :development do
  gem 'amazing_print'
  gem 'listen', '~> 3.3'
  gem 'pry-rails', '~> 0.3.9'
  gem 'rubocop-rails', '~> 2.8', '>= 2.8.1', require: false
  gem 'spring'
end

group :production do
  gem 'pg', '~> 1.1'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
