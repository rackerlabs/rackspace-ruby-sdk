class Rackspace::Backup::BackupConfiguration < Peace::Model
	class << self
		def all_backup_configurations_for_user; end
		def all_backup_configurations_for_agent; end
	end

	def details; end
	def enable_or_disable_a_backup_configuration; end
end
