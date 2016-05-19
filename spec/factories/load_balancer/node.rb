FactoryGirl.define do
  factory :node, class: Rackspace::LoadBalancer::Node do
    id ''
		address ''
		status ''
		weight ''
		port ''
		type ''
		condition ''
  end
end
