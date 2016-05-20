class Rackspace::Networking::Subnet < Peace::Model
  attr_accessor :id, :name, :enable_dhcp, :network_id, :tenant_id, :dns_nameservers, :allocation_pools, :host_routes, :ip_version, :gateway_ip, :cidr
  belongs_to :network
  belongs_to :tenant
end
