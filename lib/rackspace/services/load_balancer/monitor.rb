class Rackspace::LoadBalancer::Monitor 
  include Peace::Model
	attr_accessor :attempts_before_deactivation, :delay, :timeout, :type
	
	def configuration; end
end
