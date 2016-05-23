FactoryGirl.define do
  factory :check, class: Rackspace::Monitoring::Check do
    id { SecureRandom.hex(25) }
		entity ''
		label ''
		metadata ''
		target_alias ''
		target_resolver ''
		target_hostname ''
		period ''
		type ''
		details ''
		disabled ''
		monitoring_zones_poll ''
  end
end
