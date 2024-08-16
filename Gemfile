source "https://rubygems.org"

gem "rails",           "7.2.0"
gem "sprockets-rails", "3.4.2"
gem "sqlite3", "1.4.2"
gem "puma", "5.6.4"
gem "importmap-rails", "1.1.0"
gem "turbo-rails", "1.1.1"
gem "stimulus-rails", "1.0.4"
gem "jbuilder", "2.11.5"
gem "bootsnap", "1.12.0", require: false

group :development, :test do
  gem "debug", "1.9.1", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", "6.1.2", require: false
  gem "rubocop-rails-omakase", "1.0.0", require: false
end

group :development do
  gem "web-console", "4.2.0"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara", "3.37.1"
  gem "selenium-webdriver", "4.2.0"
end

group :production do
  gem "pg", "1.3.5"
end
