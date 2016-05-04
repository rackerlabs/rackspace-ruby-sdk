class Rackspace::Networking::Network < Peace::Model
  attr_accessor :id, :admin_state_up, :label, :name, :shared, :status, :subnets, :tenant_id

  request :list_networks
  request :create_network
  request :show_network
  request :update_network
  request :delete_network
end
