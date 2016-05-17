class Rackspace::Database::HighAvailability < Peace::Model
	def create_ha_database_instance; end
	def all_ha_database_instances; end
	def ha_database_instance_details; end
	def delete_ha_database_instance; end
	def add_acls_to_an_ha_instance; end
	def acls_an_ha_instance; end
	def delete_acls_from_an_ha_instance; end
	def add_replica_to_an_ha_instance; end
	def remove_replica_from_an_ha_instance; end
	def resize_volume_an_ha_instance; end
	def resize_flavor_an_ha_instance; end
	def restart_an_ha_instance; end
	def attach_configuration_group_to_ha_instance; end
	def remove_configuration_group_from_ha_instance; end
end
