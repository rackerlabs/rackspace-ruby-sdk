class Rackspace::Monitoring::Entity 
  include Peace::Model
  attr_accessor :id, :label, :metadata, :ip_addresses, :agent_id, :managed, :uri
  belongs_to :agent

end
