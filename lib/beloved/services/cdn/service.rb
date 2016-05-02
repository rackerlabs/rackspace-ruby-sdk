class Beloved::CDN::Service < Peace::Model
  attr_accessor :name, :domains, :origins, :caching, :restrictions,
    :flavor_id, :status, :links
end
