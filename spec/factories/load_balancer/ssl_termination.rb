FactoryGirl.define do
  factory :ssl_termination, class: Rackspace::LoadBalancer::SslTermination do
    certificate ''
		enabled ''
		intermediate_certificate ''
		secure_port ''
		secure_traffic_only ''
  end
end
