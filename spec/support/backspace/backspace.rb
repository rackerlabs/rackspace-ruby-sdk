require 'sinatra'
require 'sinatra/contrib/all'
require 'pry'
require 'active_support/all'
require "#{Dir.pwd}/lib/rackspace"

set :server, :thin
set :port, 7000

before do
  content_type 'application/json'
end

CRUD = [
  {name: 'create', method: 'post'},
  {name: 'update', method: 'put'},
  {name: 'destroy', method: 'delete'},
  {name: 'index', method: 'get'},
  {name: 'show', method: 'get'}
]

@@routes = {}

def add_actions(klass_name, friendly_name, resources)
  @@routes[friendly_name] ||= {}

  resources.each do |ar|
    CRUD.each do |c|
      path = "/#{friendly_name}/#{ar.to_s.pluralize}"

      @@routes[friendly_name][ar.to_s] ||= []
      @@routes[friendly_name][ar.to_s] << { method: c[:method], path: path }

      self.send c[:method], path do
        send_file "#{settings.public_folder}/#{friendly_name}/#{ar}/#{c[:name]}.json"
      end
    end
  end
end

Rackspace::SERVICE_KLASSES.each do |(k,v)|
  next unless v # We don't have some services

  friendly_name = k
  klass_name    = v
  klass         = klass_name.constantize.new
  resources     = klass.available_resources

  if resources
    add_actions(klass_name, friendly_name, resources)
  end
end

get '/' do
  content_type 'text/html'
  @routes = @@routes
  erb :index
end
