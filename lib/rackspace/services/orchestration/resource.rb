class Rackspace::Orchestration::Resource < Peace::Model

  request :list_resource_events
  request :list_resource_types
  request :list_resources
  request :show_event_details
  request :show_resource_data
  request :show_resource_metadata
  request :show_resource_schema
  request :show_resource_template
end
