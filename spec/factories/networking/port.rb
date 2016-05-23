FactoryGirl.define do
  factory :port, class: Rackspace::Networking::Port do
    id { SecureRandom.hex(25) }
		admin_state_up ''
		device_id { SecureRandom.hex(25) }
		device_owner ''
		fixed_ips ''
		mac_address ''
		name ''
		network_id { SecureRandom.hex(25) }
		security_groups ''
		status ''
		tenant_id { SecureRandom.hex(25) }
  end
end
