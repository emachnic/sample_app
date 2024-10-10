source "https://rubygems.org"

ruby "3.3.4"

gem "rails", "7.2.0"
gem "sprockets-rails", "3.4.2"
gem "puma", "5.6.4"
gem "importmap-rails", "2.0.3"
gem "turbo-rails", "1.1.1"
gem "stimulus-rails", "1.0.4"
gem "jbuilder", "2.11.5"
gem "bootsnap", "1.12.0", require: false
gem "sassc-rails", "2.1.2"
gem "bootstrap-sass", "3.4.1"
gem "bcrypt", "3.1.20"

group :development, :test do
  gem "debug", "1.9.1", platforms: %i[mri windows], require: "debug/prelude"
  gem "brakeman", "6.1.2", require: false
  gem "rubocop-rails-omakase", "1.0.0", require: false
end

group :development, :test do
  gem "sqlite3", "1.4.2"
end

group :development do
  gem "web-console", "4.2.0"
  gem "syntax_tree", "6.2.0"
  gem "syntax_tree-haml", "4.0.3"
  gem "syntax_tree-rbs", "1.0.0"
  gem "erb_lint"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara", "3.37.1"
  gem "selenium-webdriver", "4.2.0"
  gem "webdrivers", "5.0.0"
  gem "rails-controller-testing", "1.0.5"
  gem "minitest", "5.25.1"
  gem "minitest-reporters", "1.7.1"
  gem "guard", "2.18.0"
  gem "guard-minitest", "2.4.6"
end

group :production do
  gem "pg", "1.3.5"
end
