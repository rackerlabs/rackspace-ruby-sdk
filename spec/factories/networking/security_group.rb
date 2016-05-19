FactoryGirl.define do
  factory :security_group, class: Rackspace::Networking::SecurityGroup do
    id ''
		name ''
		description ''
		tenant_id ''
  end
end
