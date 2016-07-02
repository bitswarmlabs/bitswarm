source 'https://rubygems.org'

gemspec

group :development do
  gem "guard"
  gem "guard-rspec"

  if RUBY_PLATFORM.downcase.include?("darwin")
    gem 'rb-fsevent'
    gem 'libnotify'
  end
end
