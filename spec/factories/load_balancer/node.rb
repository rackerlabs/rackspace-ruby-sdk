FactoryGirl.define do
  factory :node, class: Rackspace::LoadBalancer::Node do
    id { SecureRandom.hex(25) }
		address ''
		status ''
		weight ''
		port ''
		type ''
		condition ''
  end
end
