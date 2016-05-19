class Rackspace::LoadBalancer::SslTermination < Peace::Model
	attr_accessor :certificate, :enabled, :intermediate_certificate, :secure_port, :secure_traffic_only
	
	def configuration; end
end
