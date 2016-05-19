FactoryGirl.define do
  factory :network, class: Rackspace::Networking::Network do
    id ''
		admin_state_up ''
		label ''
		name ''
		shared ''
		status ''
		subnets ''
		tenant_id ''
  end
end
