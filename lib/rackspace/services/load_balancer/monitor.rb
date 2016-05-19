class Rackspace::LoadBalancer::Monitor < Peace::Model
	attr_accessor :attempts_before_deactivation, :delay, :timeout, :type
	
	def configuration; end
end
