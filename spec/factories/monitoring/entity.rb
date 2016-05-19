FactoryGirl.define do
  factory :entity, class: Rackspace::Monitoring::Entity do
    id ''
		label ''
		metadata ''
		ip_addresses ''
		agent_id ''
		managed ''
		uri ''
  end
end
