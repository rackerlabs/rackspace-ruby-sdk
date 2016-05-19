FactoryGirl.define do
  factory :notification_plan, class: Rackspace::Monitoring::NotificationPlan do
    critical_state ''
		label ''
		ok_state ''
		warning_state ''
  end
end
