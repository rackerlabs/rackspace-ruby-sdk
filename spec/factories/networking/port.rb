FactoryGirl.define do
  factory :port, class: Rackspace::Networking::Port do
    id ''
		admin_state_up ''
		device_id ''
		device_owner ''
		fixed_ips ''
		mac_address ''
		name ''
		network_id ''
		security_groups ''
		status ''
		tenant_id ''
  end
end
