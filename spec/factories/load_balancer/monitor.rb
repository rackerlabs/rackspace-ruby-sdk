FactoryGirl.define do
  factory :monitor, class: Rackspace::LoadBalancer::Monitor do
    attempts_before_deactivation ''
		delay ''
		type ''
  end
end
