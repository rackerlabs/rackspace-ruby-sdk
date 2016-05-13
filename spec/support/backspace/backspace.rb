require 'sinatra'
require 'pry'

set :server, :thin
set :port, 7000

before do
  content_type 'application/json'
end

controllers = "#{Dir.pwd}/spec/support/backspace/controllers/*.rb"
Dir[File.expand_path(controllers)].each{ |f| require_relative f }
