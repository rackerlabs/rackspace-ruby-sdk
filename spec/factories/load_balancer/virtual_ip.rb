FactoryGirl.define do
  factory :virtual_ip, class: Rackspace::LoadBalancer::VirtualIp do
    id ''
		address ''
		type ''
		ip_version ''
  end
end
