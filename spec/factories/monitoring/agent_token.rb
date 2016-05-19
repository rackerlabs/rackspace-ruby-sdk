FactoryGirl.define do
  factory :agent_token, class: Rackspace::Monitoring::AgentToken do
    id ''
		label ''
		token ''
		marker ''
  end
end
