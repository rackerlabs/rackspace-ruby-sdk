FactoryGirl.define do
  factory :alarm, class: Rackspace::Monitoring::Alarm do
    id ''
		entity ''
		check ''
		disabled ''
		label ''
		criteria ''
		check_type, ''
  end
end
