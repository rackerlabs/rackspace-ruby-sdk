class Rackspace::Orchestration::Resource < Peace::Model

  class << self
    def list_resource_events; end
    def list_resource_types; end
    def resource_types; end
  end

  def data; end
  def event_details; end
  def metadata; end
  def schema; end
  def template; end
end
