class Rackspace::Orchestration::Stack < Peace::Model

  request :abandon_stack
  request :build_info
  request :create_stack
  request :delete_stack
  request :get_stack_template
  request :list_stack_data
  request :list_stack_events
  request :preview_stack
  request :update_stack
  request :show_stack_details
  request :validate_template

end
