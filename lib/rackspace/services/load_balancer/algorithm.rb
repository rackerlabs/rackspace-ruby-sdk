class Rackspace::LoadBalancer::Algorithm < Peace::Model
	attr_accessor :name
	
	class << self
		def load_balancing_algorithms; end
	end
end
