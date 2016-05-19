FactoryGirl.define do
  factory :throttle_connection, class: Rackspace::LoadBalancer::ThrottleConnection do
    max_connection_rate ''
		max_connections ''
		min_connections ''
		rate_interval ''
  end
end
