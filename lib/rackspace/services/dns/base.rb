class Rackspace::DNS < Peace::Service

  has_resource :domain
  has_resource :limit
  has_resource :record
  has_resource :reverse_dns
  has_resource :subdomain
  has_resource :zone

  def initialize
  end

end
