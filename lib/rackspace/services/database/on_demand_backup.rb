class Rackspace::Database::OnDemandBackup < Peace::Model
	attr_accessor :created, :datastore, :description, :id, :instance_id, :location_ref, :name, :parent_id, :size, :status, :updated
	
	class << self
		def create_backup; end
		def create_backup_an_ha_instance; end
	end

	def restore_backup; end
end
