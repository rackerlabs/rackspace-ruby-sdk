class Rackspace::Database < Peace::Service

  has_resource :database
  has_resource :flavor
  has_resource :instance
  has_resource :user

  def initialize
  end

end
