class Rackspace::BigDatum::Stack < Peace::Model
	attr_accessor :created, :description, :distro, :id, :links, :name, :node_groups, :services
	
	class << self
		def all_stacks; end
	end

	def details; end
end
