class Rackspace::Monitoring::Agent < Peace::Model
	attr_accessor :values, :metadata
	
	class << self
		def agent_ids; end
	end

	def security; end
	def api_operations; end
	def agent_connections; end
	def agent_connection_by_id; end
end
