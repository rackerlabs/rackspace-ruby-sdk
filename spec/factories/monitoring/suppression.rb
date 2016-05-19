FactoryGirl.define do
  factory :suppression, class: Rackspace::Monitoring::Suppression do
    alarms ''
		checks ''
		end_time ''
		entities ''
		id ''
		notification_plans ''
		start_time ''
  end
end
