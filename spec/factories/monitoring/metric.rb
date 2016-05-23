FactoryGirl.define do
  factory :metric, class: Rackspace::Monitoring::Metric do
    id { SecureRandom.hex(25) }
		check ''
  end
end
