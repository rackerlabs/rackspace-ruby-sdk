class Rackspace::DNS < Peace::Service

  has_resource :record
  has_resource :zone

  def initialize
  end

end
