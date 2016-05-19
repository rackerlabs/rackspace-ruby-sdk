FactoryGirl.define do
  factory :check, class: Rackspace::Monitoring::Check do
    id ''
		entity ''
		label ''
		metadata ''
		target_alias ''
		target_resolver ''
		target_hostname ''
		period ''
		timeout ''
		type ''
		details ''
		disabled ''
		monitoring_zones_poll ''
  end
end
