FactoryGirl.define do
  factory :stack, class: Rackspace::Orchestration::Stack do
    capabilities ''
		creation_time ''
		description ''
		disable_rollback ''
		id { SecureRandom.hex(25) }
		links ''
		notification_topics ''
		outputs ''
		parameters ''
		stack_name ''
		stack_status ''
		stack_status_reason ''
		template_description ''
		timeout_mins ''
		updated_time ''
  end
end
