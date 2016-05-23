FactoryGirl.define do
  factory :security_group, class: Rackspace::Networking::SecurityGroup do
    id { SecureRandom.hex(25) }
		name ''
		description ''
		tenant_id { SecureRandom.hex(25) }
  end
end
