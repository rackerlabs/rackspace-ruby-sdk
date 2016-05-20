class Rackspace::Orchestration::StackEvent < Peace::Model
  attr_accessor :event_time, :id, :links, :logical_resource_id, :physical_resource_id, :resource_name, :resource_properties, :resource_status, :resource_status_reason, :resource_type
  
  belongs_to :logical_resource
  belongs_to :physical_resource
end
