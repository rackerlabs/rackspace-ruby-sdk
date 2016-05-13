class Backspace

  BASE_DIR        = "/Users/mdarby/Desktop/backspace"
  SERVICES_DIR    = "#{BASE_DIR}/services"
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

    Peace::ServiceCatalog::SERVICE_KLASSES.each do |(k,v)|
      next unless v # We don't have some services

      friendly_name = k
      klass_name    = v
      klass         = klass_name.constantize.new
      resources     = klass.available_resources

      create_json_files(friendly_name, resources)
      create_controller_files(klass_name, friendly_name, resources)
    end
  end

  private

  def self.create_controller_files(klass_name, friendly_name, resources)
    actions = resources.map do |ar|
      CRUD.map do |c|
<<-action
  #{c[:method]} '/#{friendly_name}/#{ar}/#{c[:name]}' do
    respond_with 'services/#{friendly_name}/#{ar}', :#{c[:name]}
  end

action
      end
    end.join

    path = "#{CONTROLLERS_DIR}/#{friendly_name}.rb"
    File.write(path, actions)
  end

  def self.create_json_files(friendly_name, resources)
    resources.each do |ar|
      folder = "#{SERVICES_DIR}/#{friendly_name}/#{ar}"
      `mkdir -p #{folder}`
      CRUD.each{ |c| `touch #{folder}/#{c[:name]}.json` }
    end
  end

end
