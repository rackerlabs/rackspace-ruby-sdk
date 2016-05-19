class Rackspace::Database::Replication < Peace::Model
	class << self
		def all_replicas_and_replica_source_database_instances; end
	end

	def source; end
	def details; end
	def detach_replica; end
	def source_instance; end
	def convert_replication_setup_to_ha; end
end
