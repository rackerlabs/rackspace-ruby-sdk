class Rackspace::Networking::Subnet < Peace::Model
  attr_accessor :id, :name, :enable_dhcp, :network_id, :tenant_id, :dns_nameservers,
    :allocation_pools, :host_routes, :ip_version, :gateway_ip, :cidr

  def subnets; end
	def create_subnet; end
	def show_subnet; end
	def update_subnet; end
	def delete_subnet; end
end
