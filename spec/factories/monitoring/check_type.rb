FactoryGirl.define do
  factory :check_type, class: Rackspace::Monitoring::CheckType do
    id { SecureRandom.hex(25) }
		type ''
		fields ''
		channel ''
  end
end
