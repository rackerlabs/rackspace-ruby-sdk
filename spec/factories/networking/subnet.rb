FactoryGirl.define do
  factory :subnet, class: Rackspace::Networking::Subnet do
    id { SecureRandom.hex(25) }
		name ''
		enable_dhcp ''
		network_id { SecureRandom.hex(25) }
		tenant_id { SecureRandom.hex(25) }
		dns_nameservers ''
		allocation_pools ''
		host_routes ''
		ip_version ''
		gateway_ip ''
		cidr ''
  end
end
