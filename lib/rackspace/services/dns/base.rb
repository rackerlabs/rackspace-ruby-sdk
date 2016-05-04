class Rackspace::DNS < Peace::Service

  has_resource :record
  has_resource :records
  has_resource :zone
  has_resource :zones

  def initialize
  end

end
