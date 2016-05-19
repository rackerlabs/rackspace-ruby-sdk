FactoryGirl.define do
  factory :notification, class: Rackspace::Monitoring::Notification do
    id ''
		label ''
		details ''
		type ''
		marker ''
  end
end
