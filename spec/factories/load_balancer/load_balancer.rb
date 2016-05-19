FactoryGirl.define do
  factory :load_balancer, class: Rackspace::LoadBalancer::LoadBalancer do
    id ''
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
		timeout ''
		nodes ''
		https_redirect ''
  end
end
