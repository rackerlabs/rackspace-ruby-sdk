class Rackspace::Monitoring::Account 
  include Peace::Model
	attr_accessor :id, :metadata, :webhook_token
	
	def attributes; end
	def limits; end
	def audit_information; end
end
