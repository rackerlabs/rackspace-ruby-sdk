class Backspace

  BASE_DIR        = "/Users/mdarby/Documents/Code/rackspace-ruby-sdk/spec/support/backspace"
  SERVICES_DIR    = "#{BASE_DIR}/views"
  CONTROLLERS_DIR = "#{BASE_DIR}/controllers"
  CRUD            = [
    {name: 'create', method: 'post'},
    {name: 'update', method: 'put'},
    {name: 'destroy', method: 'delete'},
    {name: 'index', method: 'get'},
    {name: 'show', method: 'get'}
  ]


  def self.generate!
    `rm -rf #{BASE_DIR}`
    `mkdir -p #{BASE_DIR}`
    `mkdir -p #{SERVICES_DIR}`
    `mkdir -p #{CONTROLLERS_DIR}`

    controllers = Peace::ServiceCatalog::SERVICE_KLASSES.map do |(k,v)|
      next unless v # We don't have some services

      friendly_name = k
      klass_name    = v
      klass         = klass_name.constantize.new
      resources     = klass.available_resources

      create_json_files(friendly_name, resources)
      create_controller_files(klass_name, friendly_name, resources)
    end.compact

    create_main_controller_file(controllers)
  end

  private

  def self.create_main_controller_file(controllers)
    path     = "#{BASE_DIR}/backspace.rb"
    requires = controllers.map{ |c| "require_relative 'controllers/#{c.underscore}'\n" }.join
    uses     = controllers.map{ |c| "use #{c}\n" }.join

header = <<-HEADER
require 'sinatra'

set :server, :thin
set :port, 7000

before do
  content_type 'application/json'
end
HEADER

    content = header + requires + uses
    File.write(path, content)
  end

  def self.create_controller_files(klass_name, friendly_name, resources)
    controller_name = "#{friendly_name.classify}Controller"
    header = "class #{controller_name} < Sinatra::Base\n"

    actions = resources.map do |ar|
      CRUD.map do |c|
<<-action
  #{c[:method]} '/#{friendly_name}/#{ar}/#{c[:name]}' do
    respond_with :'#{friendly_name}/#{ar}', :#{c[:name]}
  end

action
      end
    end.join

    path = "#{CONTROLLERS_DIR}/#{friendly_name}_controller.rb"
    content = header + actions + "\nend"
    File.write(path, content)
    controller_name
  end

  def self.create_json_files(friendly_name, resources)
    resources.each do |ar|
      folder = "#{SERVICES_DIR}/#{friendly_name}/#{ar}"
      `mkdir -p #{folder}`
      CRUD.each{ |c| `touch #{folder}/#{c[:name]}.json` }
    end
  end

end
