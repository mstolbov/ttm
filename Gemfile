source 'https://rubygems.org'
source 'https://rails-assets.org'
ruby '2.2.4'

gem 'rails', '4.2.5.1'
gem 'pg'
gem 'state_machines-activerecord'
gem 'validates'
gem 'rails_12factor', group: :production

gem 'rails-assets-jquery'
gem 'rails-assets-jquery-ujs'
gem 'rails-assets-bootstrap'
gem 'rails-assets-trix'

gem 'sass-rails'
gem 'coffee-rails', '~> 4.1.0'
gem 'slim-rails'
gem 'kaminari'
gem 'config'
gem 'simple_form'
# до релиза версии 0.6.3
gem "refile", require: "refile/rails", git: "https://github.com/refile/refile.git", branch: "master"
gem "cocoon"

gem 'bcrypt', '~> 3.1.7'

gem 'puma'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'factory_girl_rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

