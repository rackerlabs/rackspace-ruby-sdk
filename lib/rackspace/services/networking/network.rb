class Rackspace::Networking::Network < Peace::Model
  attr_accessor :id, :admin_state_up, :label, :name, :shared, :status, :subnets, :tenant_id
  
  def networks; end
	def create_network; end
	def show_network; end
	def update_network; end
	def delete_network; end
end
