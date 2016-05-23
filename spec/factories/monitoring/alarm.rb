FactoryGirl.define do
  factory :alarm, class: Rackspace::Monitoring::Alarm do
    id { SecureRandom.hex(25) }
		entity ''
		check ''
		disabled ''
		label ''
		criteria ''
		check_type ''
  end
end
