source "https://rubygems.org"

gem "rails", "4.2.4"
gem "pg"
gem "bcrypt", "~> 3.1.7"
gem "puma", "~> 2.14.0"
gem "doorkeeper"
gem "jsonapi-resources", ">= 0.6.0"
gem "rack-cors", :require => "rack/cors"

group :development, :test do
  gem "byebug"
end

group :development do
  gem "spring"
  gem "spring-commands-rspec"
end

group :development, :test do
  gem "rspec-rails", "~> 3.0"
  gem "factory_girl_rails"
  gem "rspec_api_documentation"
  gem "apitome"
  gem "shoulda-matchers", "~> 3.0"
end
