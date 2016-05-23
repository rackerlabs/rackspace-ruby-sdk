FactoryGirl.define do
  factory :notification, class: Rackspace::Monitoring::Notification do
    id { SecureRandom.hex(25) }
		label ''
		details ''
		type ''
		marker ''
  end
end
