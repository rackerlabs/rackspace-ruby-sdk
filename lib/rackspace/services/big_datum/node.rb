class Rackspace::BigDatum::Node < Peace::Model
	attr_accessor :addresses, :components, :created, :flavor_id, :id, :links, :name, :node_group, :status, :updated
	
	def cluster_nodes; end
end
