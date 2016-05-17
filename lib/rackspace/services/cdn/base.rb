class Rackspace::CDN < Peace::Service

  has_resource :flavor
  has_resource :service

  def initialize
  end

  def the_home_document; end
  def ping_the_server; end

end
