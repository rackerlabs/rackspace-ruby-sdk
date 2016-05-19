class Rackspace::Backup::Agent < Peace::Model
	class << self
		def agent_details_by_host_server_id; end
	end

	def details; end
	def enable_or_disable; end
	def enable_volume_encryption; end
	def change_encryption_password; end
	def migrate_vault; end
	def change_backup_behavior; end
end
