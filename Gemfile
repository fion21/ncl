# Gemfile
source "https://rubygems.org"

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Rails 7 needs Ruby >= 3.1
ruby ENV.fetch("RUBY_VERSION", "3.3.0")

gem "rails", "~> 7.2.2", ">= 7.2.2.1"
gem "pg", ">= 1.5"                 # PostgreSQL
gem "puma", "~> 6.4"               # App server

# Sprockets + SCSS + Bootstrap 4 alpha.6
gem "sassc-rails"                  # SCSS in asset pipeline
gem "jquery-rails"                 # jQuery for Bootstrap 4 JS
gem "popper_js", "~> 1.16"         # Popper for Bootstrap 4
gem "bootstrap", "~> 4.6.2" # Your requested Bootstrap version

# Auth & misc
gem "devise", "~> 4.9"
gem "friendly_id", ">= 5.4"
gem "petergate", ">= 1.7"
gem "devcamp_view_tool", "~> 0.1.0"
gem "jbuilder", "~> 2.11"
gem "carrierwave", "~> 2.2"
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.8'
gem 'kaminari', '~> 1.2', '>= 1.2.2'


# Optional perf
gem "bootsnap", require: false

# Windows time zone data
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem "debug"           # official Ruby 3+ debugger
  gem "pry-byebug"      # optional, if you like Pry
end

group :development do
  gem "web-console", ">= 4.2.0"
  gem "listen", "~> 3.8"


  ruby "3.3.0"

end
