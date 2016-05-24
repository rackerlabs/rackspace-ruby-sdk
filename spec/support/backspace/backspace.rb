require 'sinatra'
require 'sinatra/contrib/all'
require 'pry'
require 'factory_girl'
require 'json'
require 'active_support/all'
require "#{Dir.pwd}/lib/rackspace"

FactoryGirl.find_definitions

class MyApp < Sinatra::Application

  attr_accessor :routes

  set :server, :thin
  set :port, 7000

  before do
    content_type 'application/json'
  end

  def initialize
    super
    @routes = {}

    Rackspace::SERVICE_KLASSES.each do |(k,v)|
      next unless v # We don't have some services

      friendly_name = k
      klass_name    = v
      klass         = klass_name.constantize.new
      resources     = klass.available_resources

      if resources
        routes[friendly_name] ||= {}

        resources.each do |ar|
          hash      = {}
          r         = ar.to_s
          full_name = "#{friendly_name}_#{ar}"
          coll_path = "/#{friendly_name}/#{ar.to_s.pluralize}"
          obj_path  = "#{coll_path}/:id"

          routes[friendly_name][r] ||= []
          routes[friendly_name][r] << { method: 'get', path: coll_path }
          routes[friendly_name][r] << { method: 'post', path: coll_path }
          routes[friendly_name][r] << { method: 'get', path: obj_path }
          routes[friendly_name][r] << { method: 'put', path: obj_path }
          routes[friendly_name][r] << { method: 'delete', path: obj_path }

          if FactoryGirl.factories.registered?(ar)
            obj = FactoryGirl.build(ar)
          elsif FactoryGirl.factories.registered?(full_name)
            obj = FactoryGirl.build(full_name)
          else
            Rackspace.logger.error "No Factory: #{full_name}"
          end

          if obj
            json = obj.to_json

            self.class.send 'get', coll_path do
              hash = {}
              hash[obj.resource_name.pluralize] = [obj]
              hash.to_json
            end

            self.class.send 'post', coll_path do json end
            self.class.send 'get', obj_path do json end
            self.class.send 'put', obj_path do json end
            self.class.send 'delete', obj_path do {}.to_json end

            # send_file "#{settings.public_folder}/#{friendly_name}/#{ar}/#{c[:name]}.json"
          end
        end
      end
    end
  end

  get '/' do
    content_type 'text/html'
    @all_routes = routes
    erb :index
  end

  run! if app_file == $0
end
