ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

# this hack to get Semantic UI Less to work with TheRubyRacer
ENV['EXECJS_RUNTIME'] = 'Node'

require 'bundler/setup' # Set up gems listed in the Gemfile.
