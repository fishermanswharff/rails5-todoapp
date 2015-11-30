source 'https://rubygems.org'

gem 'rails', github: "rails/rails"
gem 'sprockets-rails', github: "rails/sprockets-rails"
gem 'sprockets', github: "rails/sprockets"
gem 'sass-rails', github: "rails/sass-rails"
gem 'arel', github: "rails/arel"
gem 'rack', github: "rack/rack"
gem 'pg', '~> 0.18'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'bcrypt', '~> 3.1.7'
gem 'capistrano-rails', group: :development
gem 'active_model_serializers', '~> 0.10.0.rc2'
gem 'nokogiri'
gem 'rack-cors'
gem 'haml'

group :development, :test do
  gem 'byebug'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'capybara'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'codeclimate-test-reporter', require: nil
end

group :development do
  gem 'web-console', github: 'rails/web-console'
  gem 'spring'
end

group :production do
  gem 'unicorn'
  gem 'rails_12factor'
  gem 'rails_stdout_logging'
  gem 'rails_serve_static_assets'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
