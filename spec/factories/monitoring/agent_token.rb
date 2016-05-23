FactoryGirl.define do
  factory :agent_token, class: Rackspace::Monitoring::AgentToken do
    id { SecureRandom.hex(25) }
		label ''
		token ''
		marker ''
  end
end
