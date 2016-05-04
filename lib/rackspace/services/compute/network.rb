class Rackspace::Compute::Network < Peace::Model
  attr_accessor :id, :label, :cidr

  request :list_networks
  request :get_network
  request :create_network
  request :delete_network
  request :list_addresses
  request :list_addresses_by_network

end
