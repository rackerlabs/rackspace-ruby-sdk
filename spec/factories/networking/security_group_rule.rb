FactoryGirl.define do
  factory :security_group_rule, class: Rackspace::Networking::SecurityGroupRule do
    id { SecureRandom.hex(25) }
		direction ''
		ethertype ''
		port_range_max ''
		port_range_min ''
		protocol ''
		remote_group_id { SecureRandom.hex(25) }
		remote_ip_prefix ''
		security_group_id { SecureRandom.hex(25) }
		tenant_id { SecureRandom.hex(25) }
  end
end
