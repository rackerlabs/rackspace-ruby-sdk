class Rackspace::Networking::Network 
  include Peace::Model
  attr_accessor :id, :admin_state_up, :label, :name, :shared, :status, :subnets, :tenant_id
  
  belongs_to :tenant
  has_many :ports
  has_many :subnets

end
