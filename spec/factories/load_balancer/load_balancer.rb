FactoryGirl.define do
  factory :load_balancer, class: Rackspace::LoadBalancer::LoadBalancer do
    id { SecureRandom.hex(25) }
		cluster ''
		connection_logging ''
		port ''
		protocol ''
		algorithm ''
		virtual_ips ''
		created ''
		updated ''
		name ''
		state ''
		nodes ''
		https_redirect ''
  end
end
