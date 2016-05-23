FactoryGirl.define do
  factory :suppression, class: Rackspace::Monitoring::Suppression do
    alarms ''
		checks ''
		end_time ''
		entities ''
		id { SecureRandom.hex(25) }
		notification_plans ''
		start_time ''
  end
end
