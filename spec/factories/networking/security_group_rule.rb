FactoryGirl.define do
  factory :security_group_rule, class: Rackspace::Networking::SecurityGroupRule do
    id ''
		direction ''
		ethertype ''
		port_range_max ''
		port_range_min ''
		protocol ''
		remote_group_id ''
		remote_ip_prefix ''
		security_group_id ''
		tenant_id ''
  end
end
