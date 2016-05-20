class Rackspace::BigDatum::Cluster < Peace::Model
	attr_accessor :created, :id, :links, :name, :node_groups, :stack_id, :status, :updated
	belongs_to :stack
	
	def resize; end
end
