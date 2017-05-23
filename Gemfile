source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.6'
gem 'jquery-rails'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.0.1'
gem 'redis', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'sqlite3'
gem 'therubyracer', platforms: :ruby
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'awesome_print'
  gem 'brakeman'
  gem 'byebug', platform: :mri
  gem 'codeclimate-test-reporter', '~> 1.0'
  gem 'factory_girl_rails'
  gem 'guard'
  gem 'guard-brakeman'
  gem 'guard-minitest'
  gem 'guard-rails'
  gem 'guard-rubocop'
  gem 'mocha'
  gem 'rubocop'
  gem 'simplecov'
end

group :development do
  gem 'listen', '~> 3.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0'
  gem 'web-console', '>= 3.3'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
