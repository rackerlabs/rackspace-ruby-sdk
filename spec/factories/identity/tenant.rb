FactoryGirl.define do
  factory :tenant, class: Rackspace::Identity::Tenant do
    id { SecureRandom.hex(25) }
		name ''
		description ''
		enabled ''
  end
end
