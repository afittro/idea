source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.2'
gem 'rails', '~> 5.2.2', '>= 5.2.2.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'rails-ujs'

gem 'sassc-rails' # sass > scss > css > javascript :P

gem 'jquery-rails' # needed for many, if not most, css frameworks to do complex things

gem 'slim-rails' # slim views

gem 'paper_trail' # adds audit history - supported by rails admin
gem 'paper_trail-association_tracking'

gem 'opal-rails' # write javascript/jquery in *.js.rb files!

gem 'enumerize' # read: https://github.com/brainspec/enumerize ### gem 'simple_enum' # read: https://github.com/lwe/simple_enum

# rails_admin stuff
gem 'rails_admin_clone'
gem 'rails_admin'
gem 'cancancan' # authorization
gem "rails_admin_import", "~> 2.2"
gem 'rails_admin_toggleable'
gem 'rails_admin_selectable'
gem 'rails_admin_charts'

# Semantic UI + jQuery DataTables
gem 'semantic-ui-rails'
gem 'semantic-ui-sass'
gem 'kaminari' # pagination

# sortable datatables and more
gem 'jquery-datatables' # https://github.com/mkhairi/jquery-datatables

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'awesome_print'
  gem 'faker', :git => 'https://github.com/stympy/faker.git', :branch => 'master' # latest github copy has more features
  gem 'rspec-rails' # test suite - prefer over built-in test::unit/minitest
  gem 'factory_bot_rails' # prefer over fabrication
  gem 'annotate' # annotate models self-inspecting automatic documentation
  gem 'hirb' # read: http://tagaholic.me/hirb/doc/index.html
  gem 'pry-rails' # read: https://github.com/rweng/pry-rails
  gem 'obj_mud', :git => 'https://github.com/lwoodson/obj_mud'
  gem 'zormk', :git => 'https://github.com/lwoodson/zormk'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
