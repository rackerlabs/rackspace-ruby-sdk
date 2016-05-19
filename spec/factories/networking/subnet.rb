FactoryGirl.define do
  factory :subnet, class: Rackspace::Networking::Subnet do
    id ''
		name ''
		enable_dhcp ''
		network_id ''
		tenant_id ''
		dns_nameservers ''
		allocation_pools ''
		host_routes ''
		ip_version ''
		gateway_ip ''
		cidr ''
  end
end