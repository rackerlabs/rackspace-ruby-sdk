FactoryGirl.define do
  factory :virtual_ip, class: Rackspace::LoadBalancer::VirtualIp do
    id { SecureRandom.hex(25) }
		address ''
		type ''
		ip_version ''
  end
end
