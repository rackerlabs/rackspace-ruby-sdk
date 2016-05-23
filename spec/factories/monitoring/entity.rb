FactoryGirl.define do
  factory :entity, class: Rackspace::Monitoring::Entity do
    id { SecureRandom.hex(25) }
		label ''
		metadata ''
		ip_addresses ''
		agent_id { SecureRandom.hex(25) }
		managed ''
		uri ''
  end
end
