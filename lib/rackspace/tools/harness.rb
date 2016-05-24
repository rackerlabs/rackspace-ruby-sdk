require 'factory_girl'
require 'pry'
require './lib/rackspace'

FactoryGirl.find_definitions
FactoryGirl.factories.each do |f|
  f.compile
  FactoryGirl.build(f.name)
end
