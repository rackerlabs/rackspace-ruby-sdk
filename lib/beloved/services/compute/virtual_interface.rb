class Beloved::Compute::VirtualInterface < Peace::Model
  attr_accessor :id, :mac_address, :ip_addresses

  request :list_virtual_interfaces
  request :create_virtual_interface
  request :delete_virtual_interface
end
