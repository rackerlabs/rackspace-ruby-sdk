class Rackspace::Orchestration::Resource 
  include Peace::Model
  attr_accessor :creation_time, :links, :logical_resource_id, :physical_resource_id, :required_by, :resource_name, :resource_status, :resource_status_reason, :resource_type, :updated_time
  
  belongs_to :logical_resource
  belongs_to :physical_resource

  class << self
    def events; end
    def types; end
  end

  def data; end
  def details; end
  def metadata; end
  def schema; end
  def template; end
end
