FactoryGirl.define do
  factory :access_list, class: Rackspace::LoadBalancer::AccessList do
    address ''
		id { SecureRandom.hex(25) }
		type ''
  end
end
