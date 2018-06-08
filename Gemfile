source 'https://rubygems.org'

ruby '2.2.3'

gem 'rails_12factor', group: :production
gem 'rails_serve_static_assets'
gem "pagseguro-oficial", "~> 2.3.0"

gem 'devise'
gem 'pundit'

gem 'rails', '4.2.1'

group :development,:test do
  gem 'sqlite3'
end

group :production do
  gem 'pg'
end

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'coffee-script-source', '1.8.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'foundation-rails'
gem 'foundation-icons-sass-rails'
gem 'jquery-turbolinks'



group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
