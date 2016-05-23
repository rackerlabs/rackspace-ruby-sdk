FactoryGirl.define do
  factory :stack_event, class: Rackspace::Orchestration::StackEvent do
    event_time ''
		id { SecureRandom.hex(25) }
		links ''
		logical_resource_id { SecureRandom.hex(25) }
		physical_resource_id { SecureRandom.hex(25) }
		resource_name ''
		resource_properties ''
		resource_status ''
		resource_status_reason ''
		resource_type ''
  end
end
