require 'sinatra/base'
require 'pry'
require 'factory_girl'
require 'json'
require 'active_support/all'
require 'mongo'
require "#{Dir.pwd}/lib/rackspace"

class Router
  attr_accessor :klass, :klass_name, :friendly_name, :resources, :routes

  def self.all_routes
    FactoryGirl.find_definitions
    routers = Rackspace::SERVICE_KLASSES.map{ |(k,v)| Router.new(k, v) }.compact
    routers.map(&:routes).flatten.compact
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

      # Trim off localhost part
      coll_path  = full_klass.constantize.collection_url[21..-1]
      obj_path   = "#{coll_path}/:id"

      { coll: full_name.to_sym,
        klass: full_klass,
        coll_path: coll_path,
        obj_path: obj_path }
    end
  end
end



class MyApp < Sinatra::Base
  DB = Mongo::Client.new(['127.0.0.1:27017'], database: 'backspace')

  configure do
    set :server, :thin
    set :port, 7000
    set :logging, Logger::DEBUG
    set :mocked_routes, Router.all_routes
  end

  before do
    content_type 'application/json'
  end

  mocked_routes.each do |hash|
    get hash[:coll_path] do
      DB[hash[:coll]].find
    end

    post hash[:coll_path] do
      DB[hash[:coll]].insert_one(params)
    end

    get hash[:obj_path] do
      DB[hash[:coll]].find(id: params[:id])
    end

    put hash[:obj_path] do
      DB[hash[:coll]].update_one({id: params[:id]}, {"$inc" => params})
    end

    delete hash[:obj_path] do
      DB[hash[:coll]].delete_one(id: params[:id])
    end
  end

  get '/' do
    content_type 'text/html'
    @all_routes = MyApp.mocked_routes
    erb :index
  end

  run! if app_file == $0
end
