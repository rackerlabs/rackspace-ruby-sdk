class Rackspace::Monitoring::Account < Peace::Model
	attr_accessor :id, :metadata, :webhook_token
	
	def attributes; end
	def limits; end
	def audit_information; end
end
