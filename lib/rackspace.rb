require "./lib/rackspace/version"
require 'rackspace-ruby-sdk-core'
require 'pry'

Dir[File.expand_path "lib/rackspace/services/**/base.rb"].each{ |f| require_relative f }
