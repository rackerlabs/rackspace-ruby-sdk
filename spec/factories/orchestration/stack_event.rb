FactoryGirl.define do
  factory :stack_event, class: Rackspace::Orchestration::StackEvent do
    event_time ''
		id ''
		links ''
		logical_resource_id ''
		physical_resource_id ''
		resource_name ''
		resource_properties ''
		resource_status ''
		resource_status_reason ''
		resource_type ''
  end
end
