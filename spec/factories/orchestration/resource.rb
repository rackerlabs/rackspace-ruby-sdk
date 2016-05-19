FactoryGirl.define do
  factory :resource, class: Rackspace::Orchestration::Resource do
    creation_time ''
		links ''
		logical_resource_id ''
		physical_resource_id ''
		required_by ''
		resource_name ''
		resource_status ''
		resource_status_reason ''
		resource_type ''
		updated_time ''
  end
end
