class Rackspace::Networking::Port 
  include Peace::Model
  attr_accessor :id, :admin_state_up, :device_id, :device_owner, :fixed_ips, :mac_address, :name, :network_id, :security_groups, :status, :tenant_id
  
  belongs_to :device
  belongs_to :network
  belongs_to :tenant

end
