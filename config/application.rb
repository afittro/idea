# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'
require 'sassc-rails'
require 'opal'
require 'jquery-rails'
require 'opal-jquery'

Bundler.require(*Rails.groups)

module Idea
  # replace scss with sass, Andrew preference
  class Application < Rails::Application
    config.sass.preferred_syntax = :sass
    config.sass.line_comments = false
    config.sass.cache = false

    # switch to slim for all scaffolding
    config.generators do |g|
      g.template_engine :slim
    end

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
  end
end
