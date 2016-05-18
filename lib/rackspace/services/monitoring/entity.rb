class Rackspace::Monitoring::Entity < Peace::Model
  attr_accessor :id, :label, :metadata, :ip_addresses, :agent_id, :managed, :uri

  def create_an_entity; end
  def entities_an_account; end
  def get_an_entity_by_id; end
  def update_an_entity_by_id; end
  def delete_entity_by_id; end
end
