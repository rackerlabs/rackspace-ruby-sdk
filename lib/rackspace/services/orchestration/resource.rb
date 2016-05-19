class Rackspace::Orchestration::Resource < Peace::Model
  attr_accessor :creation_time, :links, :logical_resource_id, :physical_resource_id, :required_by, :resource_name, :resource_status, :resource_status_reason, :resource_type, :updated_time

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
