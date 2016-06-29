class Rackspace::LoadBalancer::ThrottleConnection 
  include Peace::Model
	attr_accessor :max_connection_rate, :max_connections, :min_connections, :rate_interval
	
	def configuration; end
end
