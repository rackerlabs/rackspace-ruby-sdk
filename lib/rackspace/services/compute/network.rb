class Rackspace::Compute::Network < Peace::Model
  attr_accessor :id, :label, :cidr

  action :list_addresses_by_network
end
