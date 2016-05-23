FactoryGirl.define do
  factory :access_rule, class: Rackspace::LoadBalancer::AccessRule do
    id { SecureRandom.hex(25) }
		address ''
		type ''
  end
end
