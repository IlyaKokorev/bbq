source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
gem 'puma', '~> 4.1'
gem 'webpacker', '~> 4.0'
gem 'uglifier', '~> 4.2'

gem 'devise'
gem 'devise-i18n'
gem 'russian'
gem 'byebug'
gem 'bootsnap', require: false
gem 'carrierwave'
gem 'rmagick'
gem 'fog-aws'
gem 'sass-rails'
gem 'jquery-rails'


group :production do
  gem 'pg'
end

group :development, :test do
  gem 'dotenv-rails'
  gem 'sqlite3', '~> 1.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
