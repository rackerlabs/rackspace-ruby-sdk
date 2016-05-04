class Rackspace::Orchestration::Stack < Peace::Model
  include Peace::Details

  action :abandon_stack
  action :build_info
  action :get_stack_template
  action :list_stack_data
  action :list_stack_events
  action :preview_stack
  action :validate_template
end
