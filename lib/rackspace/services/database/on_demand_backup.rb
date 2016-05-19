class Rackspace::Database::OnDemandBackup < Peace::Model
	class << self
		def create_backup; end
		def create_backup_an_ha_instance; end
	end

	def restore_backup; end
end
