require 'sinatra/base'
require 'pry'
require 'factory_girl'
require 'json'
require 'active_support/all'
require "#{Dir.pwd}/lib/rackspace"

FactoryGirl.find_definitions

class Router
  attr_accessor :klass, :klass_name, :friendly_name, :resources, :routes

  def self.all_routes
    routers = Rackspace::SERVICE_KLASSES.map{ |(k,v)| Router.new(k, v) }.compact
    routers.map(&:routes).flatten
  end

  def initialize(friendly_name, klass_name)
    @friendly_name = friendly_name
    @klass_name    = klass_name
    @klass         = klass_name.constantize.new
    @resources     = klass.available_resources
    @routes        = setup_routes!
  end

  private

  def setup_routes!
    return [] unless resources

    resources.map do |ar|
      hash       = {}
      r          = ar.to_s
      full_name  = "#{friendly_name}_#{ar}"
      full_klass = "#{klass_name}::#{r.classify}"

      full_klass.gsub!('ReverseDn', 'ReverseDNS')

      coll_path  = full_klass.constantize.collection_url
      obj_path   = "#{coll_path}/:id"

      if FactoryGirl.factories.registered?(ar)
        obj = FactoryGirl.build(ar)
      elsif FactoryGirl.factories.registered?(full_name)
        obj = FactoryGirl.build(full_name)
      else
        Rackspace.logger.error "No Factory: #{full_name}"
      end

      # json = obj.to_json
      #
      # get coll_path do
      #   hash = {}
      #   hash[obj.resource_name.pluralize] = [obj]
      #   hash.to_json
      # end
      #
      # post coll_path do json end
      # get obj_path do json end
      # put obj_path do json end
      # delete obj_path do {}.to_json end

      # binding.pry

      # send_file "#{settings.public_folder}/#{friendly_name}/#{ar}/#{c[:name]}.json"

      [
        { klass: full_klass, method: :get, path: coll_path },
        { klass: full_klass, method: :post, path: coll_path },
        { klass: full_klass, method: :get, path: obj_path },
        { klass: full_klass, method: :put, path: obj_path },
        { klass: full_klass, method: :delete, path: obj_path }
      ]
    end
  end
end


class MyApp < Sinatra::Base
  set :server, :thin
  set :port, 7000

  before do
    content_type 'application/json'
  end

  get '/' do
    content_type 'text/html'
    @all_routes = Router.all_routes
    erb :index
  end

  run! if app_file == $0
end
