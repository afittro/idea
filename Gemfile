# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'
gem 'cancancan' # authorization
gem 'coffee-rails', '~> 4.2'
gem 'enumerize' # read: https://github.com/brainspec/enumerize ### gem 'simple_enum' # read: https://github.com/lwe/simple_enum
gem 'jbuilder', '~> 2.5'
gem 'jquery-datatables' # https://github.com/mkhairi/jquery-datatables
gem 'jquery-rails' # needed for many, if not most, css frameworks to do complex things
gem 'jszip-rails' # for excel export from datatables
gem 'kaminari' # pagination
gem 'opal-rails' # write javascript/jquery in *.js.rb files!
gem 'paper_trail' # adds audit history - supported by rails admin
gem 'paper_trail-association_tracking'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.2', '>= 5.2.2.1'
gem 'rails-ujs'
gem 'rails_admin'
gem 'rails_admin_charts'
gem 'rails_admin_clone'
gem 'rails_admin_import', '~> 2.2'
gem 'rails_admin_selectable'
gem 'rails_admin_toggleable'
gem 'sassc-rails' # sass > scss > css > javascript :P
gem 'semantic-ui-rails'
gem 'semantic-ui-sass'
gem 'slim-rails' # slim views
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'annotate' # annotate models self-inspecting automatic documentation
  gem 'awesome_print'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails' # prefer over fabrication
  gem 'faker', git: 'https://github.com/stympy/faker.git', branch: 'master' # latest github copy has more features
  gem 'hirb' # read: http://tagaholic.me/hirb/doc/index.html
  gem 'obj_mud', git: 'https://github.com/lwoodson/obj_mud'
  gem 'pry-rails' # read: https://github.com/rweng/pry-rails
  gem 'rspec-rails' # test suite - prefer over built-in test::unit/minitest
  gem 'zormk', git: 'https://github.com/lwoodson/zormk'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
