source "https://rubygems.org"

ruby "3.3.0" # optional but helpful

gem "rails", "~> 7.2.2", ">= 7.2.2.1"
gem "pg", "~> 1.6"
gem "puma", ">= 5.0"

# Asset pipeline / CSS
gem "sprockets-rails"
gem "sassc-rails"

# Hotwire stack
gem "importmap-rails", "2.2.1"
gem "turbo-rails"
gem "stimulus-rails"

# JSON helpers
gem "jbuilder"

# Auth & slugs (should be available in all envs)
gem "devise", "~> 4.9", ">= 4.9.3"
gem "friendly_id", "~> 5.1"

# Platform helpers
gem "tzinfo-data", platforms: %i[mswin mswin64 mingw x64_mingw jruby]
gem "bootsnap", require: false

group :development, :test do
  # Modern Ruby debugger (already in your file)
  gem "debug", platforms: %i[mri mswin mswin64 mingw x64_mingw], require: "debug/prelude"

  # Linting & security
  gem "rubocop", require: false
  gem "rubocop-rails-omakase", require: false
  gem "brakeman", require: false

  # Pry in Rails console
  gem "pry-rails"          # brings in 'pry'
  # Optional add-ons (use only if you need them)
  # gem "pry-stack_explorer"
  # gem "pry-remote"
  # NOTE: Do NOT add 'pry-debugger' on Ruby 3.x
end

group :development do
  gem "web-console"
  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
end
