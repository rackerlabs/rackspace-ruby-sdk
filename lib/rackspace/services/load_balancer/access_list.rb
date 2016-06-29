class Rackspace::LoadBalancer::AccessList 
  include Peace::Model
	attr_accessor :address, :id, :type
	
	def bulk_delete_networks; end
end
