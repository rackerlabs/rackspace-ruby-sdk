class Rackspace::Queue < Peace::Service

  has_resource :claim
  has_resource :message

  def initialize
  end

  def home_document; end

end
