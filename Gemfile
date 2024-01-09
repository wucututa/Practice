source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"
gem "rails", "~> 7.0.8"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

group :development, :test do  
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do 
  gem "figaro"
  gem "web-console"
  gem "rails_live_reload"
end

group :test do  
  gem "capybara"
  gem "selenium-webdriver"

end

gem "importmap-rails", "~> 2.0"
gem "turbo-rails"
gem "stimulus-rails"
gem "redis", ">= 4.0.1"
gem 'sassc'

gem "devise", "~> 4.9"