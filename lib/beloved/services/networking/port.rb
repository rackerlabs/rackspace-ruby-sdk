class Beloved::Networking::Port < Peace::Model
  attr_accessor :id, :admin_state_up, :device_id, :device_owner, :fixed_ips, :mac_address,
    :name, :network_id, :security_groups, :status, :tenant_id

  request :list_ports
  request :create_port
  request :show_port
  request :update_port
  request :delete_port
  
end
