require 'simplecov'
SimpleCov.start do
  add_filter "/spec/"
  minimum_coverage 100
  refuse_coverage_drop
end if ENV["coverage"]

require_relative "../lib/sys/proctree"
Bundler.require(:test)

Dir[File.expand_path('../support/**/*.rb', __FILE__)].each { |file| require file }
