class Rackspace::CDN::Flavor < Peace::Model
  attr_accessor :id, :providers, :links

  request :get_flavor
  request :list_flavors

end
