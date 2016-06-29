class Rackspace::LoadBalancer::Algorithm 
  include Peace::Model
	attr_accessor :name
	
	class << self
		def load_balancing_algorithms; end
	end
end
