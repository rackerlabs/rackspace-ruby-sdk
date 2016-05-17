class Rackspace::Queues < Peace::Service

  has_resource :claim
  has_resource :message

  def initialize
  end

  def get_home_document; end

end
