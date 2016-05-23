FactoryGirl.define do
  factory :network, class: Rackspace::Networking::Network do
    id { SecureRandom.hex(25) }
		admin_state_up ''
		label ''
		name ''
		shared ''
		status ''
		subnets ''
		tenant_id { SecureRandom.hex(25) }
  end
end
