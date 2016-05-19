class Rackspace::CDN::Service < Peace::Model
  attr_accessor :id, :name, :domains, :origins, :caching, :restrictions,
    :flavor_id, :status, :links

end
